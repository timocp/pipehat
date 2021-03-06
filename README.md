# Pipehat [![Build Status](https://github.com/timocp/pipehat/workflows/CI/badge.svg)](https://github.com/timocp/pipehat/actions)

Pipehat is a Ruby gem for reading and writing HL7 v.2.x messages.

This library is experimental - the API is incomplete and may change, and it does
not support a lot of segment and data types yet.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pipehat'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install pipehat

## Usage

Pipehat is aware of the type of each HL7v2 field.  This allows each field,
component and sub-component to be accessed by name.

### Parsing HL7

Suppose the following simple example of an (incomplete) admission message
and a PID message with 2 patient IDs (showing a repeating field and
subcomponents).

```ruby
# Parse a message from a string
hl7 = "MSH|^~\&|||||20200927212805+0930||ADT^A01^ADT_A01|1234567890|D|2.5\r" \
      "PID||XXX|1234^^^System1&&L~ABC^^^System2&&L||Family^Given"
msg = Pipehat::Message.new(hl7)
```

#### Segments

Messages are essentially an array of segments.  Individual segments can be
accessed via an Enumerator returned from `#each`.  The optional parameter will
filter by segment type.

```ruby
# Example, pick the first PID segment
pid = msg.each(:PID).first
```

Any standard methods from Enumerable can be applied to this.  For example,
to select the first PRD segment which has a provider role of `RT` could be done
like this (note this would work for PRD segment where `provider_role` contained
additional components, such as `RT|Referred To`).

```ruby
ref_to_prd = msg.each(:PRD).detect { |prd| prd.provider_role.to_s == "RT" }
```

#### Fields, Repeats, Components and Subcomponents

Once a segment is accessed, fields, repeats, components and sub-components
can be accessed by name.  Note that these methods return a subclass of
Pipehat::Node, which is an index into the segment.  To retreive the string
value at (or under) that position, call `to_s` on the node.

```ruby
# Access the value of PID-2 (deprecated patient ID)
pid.patient_id.to_s #=> "XXX"

# Access the first repeat in PID-3 (patient ID list)
pid.patient_identifier_list.first.to_s #=> "1234"

# Which is equivalent to accessing the first component of the field, which 
# can also be accessed by name as it is known to be a CX type:
pid.patient_identifier_list.first.id_number.to_s #=> "1234"

# The 4th component of PID-3 is a composite type (HD), so its parts can
# also be accessed individually:
pid.patient_identifier_list.first.assigning_authority.namespace_id.to_s #=> "System1"
pid.patient_identifier_list.first.assigning_authority.universal_id_type.to_s #=> "L"

# Field repetitions can be ignored - in this case, Pipehat will assume you
# are referring to the first repeat.
pid.patient_identifier_list.assigning_authority.namespace_id.to_s #=> "System1"

# Access the second repeat in PID-3.  Indexes into repeats are 1-based, for
# consistency with other HL7 positional indexing.
pid.patient_identifier_list[2].to_s #=> "ABC"
pid.patient_identifier_list[2].id_number.to_s #=> "ABC"
pid.patient_identifier_list[2].assigning_authority.namespace_id.to_s #=> "System2"
```

#### Numeric Indexes

Values can also be accessed positionally by index instead of name.  This could
be useful to access values:

* from a segment type this library doesn't understand
* that have additional components in newer versions of HL7 which this library doesn't understand
* that are invalid (eg, extra components or subcomponents)

```ruby
# Equivalent to the last example in the previous section
pid.field(3).repeat(2).component(1).subcomponent(1) #=> "System2"

# Again, repetitions can be ignored if you just want to read from the first
pid.field(3).component(1).subcomponent(1) #=> "System1"
```

The method names way of accessing segments can be more verbose but is also
more readable and self-documenting.

### Generating HL7

The main way to build up a HL7 message is to use the methods on Message:
* `append(type)` adds a segment of the given type at the of the message
* `insert(index, type)` insert a segment of the given type at the specified position
where `type` is a symbol for the segment such as `:PID` or `:MSH`.

Both of these methods will yield the new segment to a block if provided, and
also return the segment.

Unlike other HL7 indexing, the index param to `insert` is treated like a ruby
array (ie, insert at 0 to insert before all other seconds).

The following example generates a message similar to the "Parsing" example
above.  Note that the field separator and encoding characters do not have to be
provided, they are initialized automatically.

```ruby
msg = Pipehat::Message.new
msg.append(:MSH) do |msh|
  msh.date_time_of_message = Time.now.strftime("%Y%m%d%H%M%S%z")
  msh.message_type.message_code = "ADT"
  msh.message_type.trigger_event = "A01"
  msh.message_type.message_structure = "ADT_A01"
  msh.message_control_id = "1234567890"
  msh.processing_id = "D"
  msh.version_id = "2.5"
end
msg.append(:PID) do |pid|
  pid.patient_id = "XXX"
  pid.patient_name.family_name = "Family"
  pid.patient_name.given_name = "Given"

  # PID-3 first repeat (since no repeat is mentioned)
  pid.patient_identifier_list.id_number = "1234"
  pid.patient_identifier_list.assigning_authority.namespace_id = "System1"
  pid.patient_identifier_list.assigning_authority.universal_id_type = "L"
  # PID-3 second repeat
  pid.patient_identifier_list[2].id_number = "ABC"
  pid.patient_identifier_list[2].assigning_authority.namespace_id = "System2"
  pid.patient_identifier_list[2].assigning_authority.universal_id_type = "L"
end
msg.to_hl7 #=> "MSH|^~\\&|||||20200927212805+0930||ADT^A01^ADT_A01|1234567890|D|2.5\r..."
```

#### Numeric Indexes

The indexed based access looks slightly different due to ruby syntax; the `set`
method must be called on the node object.  `set` can be called at any level
from field to subcomponent and it will replace all current values.

```ruby
pid = Pipehat::Segment::PID.new
pid.field(3).repeat(2).component(4).set("System2")
pid.field(3).repeat(2).component(4).subcomponent(3).set("L")
# is equivalent to:
# pid.patient_identifier_list[2].assigning_authority = "System2"
# pid.patient_identifier_list[2].assigning_authority.universal_id_type = "L"

pid.to_hl7 #=> "PID|||~^^^System2&&L"
```

#### Assigning an array of components

You can assign an array to a field, repeat or component (but not a
subcomponent).  This allows a more concise but less expressive means of
assignment.  The following 2 examples are equivalent:

```ruby
pid = Pipehat::Segment::PID.new
pid.patient_name[1] = ["Family", "Given", "", "", "Mx"]
pid.to_hl7 #=> "PID|||||Family^Given^^^Mx"

pid = Pipehat::Segment::PID.new
pid.patient_name.family_name = "Family"
pid.patient_name.given_name = "Given"
pid.patient_name.prefix = "Mx"
pid.to_hl7 #=> "PID|||||Family^Given^^^Mx"
```

Note that the index `[1]` is required in the first example because otherwise it
is assumed you're trying to set 2 repeats which is not what you want:

```ruby
pid = Pipehat::Segment::PID.new
pid.patient_name = ["Family", "Given"]
pid.to_hl7 #=> "PID|||||Family~Given"
```

Subcomponents can also be assigned this way:

```ruby
pid = Pipehat::Segment::PID.new
pid.patient_identifier_list.id_number = "ID1"
pid.patient_identifier_list.assigning_authority = ["AA", "", "L"]
pid.to_hl7 #=> "PID|||ID1^^^AA&&L"
```

Arrays assigned this way must contain strings only.

### HL7 Escaping

Values returned by the `to_s` methods have HL7 escape codes automatically 
unescaped.  Assigning a value will automatically be escaped.  The unescaped
version can be read with `unescaped`.

```ruby
pid = Pipehat::Segment::PID.new("PID||123\\R\\456")
pid.patient_id.to_s #=> "123~456"
pid.patient_id.unescaped #=> "123\\R\\456"
pid.patient_identifier_list = "A & B"
pid.to_hl7 #=> "PID||123\\R\\456|A \\T\\ B"
```

Note there is currently no way to set a string without the escaping (this will
be needed when writing, for example, HL7 Formatted Text).

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/timocp/pipehat. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/timocp/pipehat/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Pipehat project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/timocp/pipehat/blob/master/CODE_OF_CONDUCT.md).
