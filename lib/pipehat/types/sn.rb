# frozen_string_literal: true

# Structured Numeric
Pipehat.define_type :SN do
  add_component :comparator,       :ST
  add_component :num1,             :NM
  add_component :separator_suffix, :ST
  add_component :num2,             :NM
end
