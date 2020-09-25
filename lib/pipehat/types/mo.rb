# frozen_string_literal: true

# Money
Pipehat.define_type :MO do
  add_component :quantity,      :NM
  add_component :denomination,  :ID
end
