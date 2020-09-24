# frozen_string_literal: true

# Money
Pipehat.define_type :MO do
  component :quantity,      :NM
  component :denomination,  :ID
end
