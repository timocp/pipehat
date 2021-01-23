# frozen_string_literal: true

# Driver’s License Number
Pipehat.define_type :DLN do
  add_component :drivers_license_number,         :ST
  add_component :issuing_state_province_country, :CWE
  add_component :expiration_date,                :DT
end
