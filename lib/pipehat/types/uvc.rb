# frozen_string_literal: true

# UB Value Code and Amount
Pipehat.define_type :UVC do
  add_component :value_code,                         :CWE
  add_component :value_amount,                       :MO
  add_component :non_monetary_value_amount_quantity, :NM
  add_component :non_monetary_value_amount_units,    :CWE
end
