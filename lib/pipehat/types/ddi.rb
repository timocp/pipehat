# frozen_string_literal: true

# Daily Deductible Information
Pipehat.define_type :DDI do
  add_component :delay_days,      :NM
  add_component :monetary_amount, :MO
  add_component :number_of_days,  :NM
end
