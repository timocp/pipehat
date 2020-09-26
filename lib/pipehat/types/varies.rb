# frozen_string_literal: true

# Varies - a type used in fields where the actual content is context specific
Pipehat.define_type :Varies do
end

Pipehat::Field::Varies.send(:define_method, :cast) do |cast_to|
  Object.const_get("Pipehat::Field::#{cast_to}").new(segment, fnum)
end

Pipehat::Repeat::Varies.send(:define_method, :cast) do |cast_to|
  Object.const_get("Pipehat::Repeat::#{cast_to}").new(segment, fnum, rnum)
end

Pipehat::Component::Varies.send(:define_method, :cast) do |cast_to|
  Object.const_get("Pipehat::Component::#{cast_to}").new(segment, fnum, rnum, cnum)
end

# Subcomponent class has to be created as composite types don't normally have one
module Pipehat
  module Subcomponent
    class Varies < Base
      def cast(cast_to)
        Object.const_get("Pipehat::Subcomponent::#{cast_to}").new(segment, fnum, rnum, cnum, snum)
      end
    end
  end
end
