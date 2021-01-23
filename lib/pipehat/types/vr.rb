# frozen_string_literal: true

# Value Range
Pipehat.define_type :VR do
  add_component :first_data_code_value, :ST
  add_component :last_data_code_value,  :ST
end
