# frozen_string_literal: true

# Policy Type and Amount
Pipehat.define_type :PTA do
  add_component :policy_type,                  :CWE
  add_component :amount_class,                 :CWE
  add_component :money_or_percentage_quantity, :NM
  add_component :money_or_percentage,          :MOP
end
