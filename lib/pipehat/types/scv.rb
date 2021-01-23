# frozen_string_literal: true

# Scheduling Class Value Pair
Pipehat.define_type :SCV do
  add_component :parameter_class, :CWE
  add_component :parameter_value, :ST
end
