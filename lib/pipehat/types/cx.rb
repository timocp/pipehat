# frozen_string_literal: true

# Extended Composite ID with Check Digit
Pipehat.define_type :CX do
  add_component :id_number,                       :ST
  add_component :identifier_check_digit,          :ST
  add_component :check_digit_scheme,              :ID
  add_component :assigning_authority,             :HD
  add_component :identifier_type_code,            :ID
  add_component :assigning_facility,              :HD
  add_component :effective_date,                  :DT
  add_component :expiration_date,                 :DT
  add_component :assigning_jurisdiction,          :CWE
  add_component :assigning_agency_or_department,  :CWE
  add_component :security_check,                  :ST
  add_component :security_check_scheme,           :ID
end
