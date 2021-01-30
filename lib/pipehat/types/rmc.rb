# frozen_string_literal: true

# Room Coverage
Pipehat.define_type :RMC do
  add_component :room_type,           :CWE
  add_component :amount_type,         :CWE
  add_component :coverage_amount,     :NM
  add_component :money_or_percentage, :MOP
end
