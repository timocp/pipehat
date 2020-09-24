# frozen_string_literal: true

module Pipehat
  class TypeDefinitionProxy
    def initialize(fclass, rclass, cclass)
      @fclass = fclass
      @rclass = rclass
      @cclass = cclass
      @count = 0
    end

    def component(name, type)
      setter = "#{name}=".to_sym
      count = @count += 1

      # component for a field class is delegated to the first repeat and
      # returns a Component
      @fclass.define_method name do
        first.send(name)
      end

      @fclass.define_method setter do |value|
        first.send(setter, value)
      end

      # component in a repeat class returns a Component
      @rclass.define_method name do
        component(count, Object.const_get("Pipehat::Component::#{type}"))
      end

      @rclass.define_method setter do |value|
        send(name).set(value)
      end

      # component in a component class returns a Subcomponent
      @cclass.define_method name do
        subcomponent(count, Object.const_get("Pipehat::Subcomponent::#{type}"))
      end

      @cclass.define_method setter do |value|
        send(name).set(value)
      end
    end
  end

  def self.define_type(type, &block)
    # define classes at each level
    fclass = Pipehat::Field.const_set(type, Class.new(Pipehat::Field::Base))
    rclass = Pipehat::Repeat.const_set(type, Class.new(Pipehat::Repeat::Base))
    cclass = Pipehat::Component.const_set(type, Class.new(Pipehat::Component::Base))

    if block_given?
      # composite type
      TypeDefinitionProxy.new(fclass, rclass, cclass).instance_eval(&block)
    else
      # primitive type
      Pipehat::Subcomponent.const_set(type, Class.new(Pipehat::Subcomponent::Base))
    end
  end
end