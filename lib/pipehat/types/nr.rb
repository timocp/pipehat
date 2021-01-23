# frozen_string_literal: true

# Numeric Range
Pipehat.define_type :NR do
  add_component :low_value,  :NM
  add_component :high_value, :NM
end
