# frozen_string_literal: true

# Money or Percentage
Pipehat.define_type :MOP do
  add_component :money_or_percentage_indicator, :ID
  add_component :money_or_percentage_quantity,  :NM
  add_component :monetary_denomination,         :ID
end
