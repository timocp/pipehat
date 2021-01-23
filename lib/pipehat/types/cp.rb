# frozen_string_literal: true

# Composite Price
Pipehat.define_type :CP do
  add_component :price,       :MO
  add_component :price_type,  :ID
  add_component :from_value,  :NM
  add_component :to_value,    :NM
  add_component :range_units, :CWE
  add_component :range_type,  :ID
end
