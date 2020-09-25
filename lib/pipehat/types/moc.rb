# frozen_string_literal: true

# Money and Code
Pipehat.define_type :MOC do
  add_component :monetary_amount, :MO
  add_component :charge_code,     :CWE
end
