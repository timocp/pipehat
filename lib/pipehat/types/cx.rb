# frozen_string_literal: true

# Extended Composite ID with Check Digit
Pipehat.define_type :CX do
  component :id_number,                       :ST
  component :identifier_check_digit,          :ST
  component :check_digit_scheme,              :ID
  component :assigning_authority,             :HD
  # component :identifier_type_code,            :ID
  # component :assigning_facility,              :HD
  # component :effective_date,                  :DT
  # component :expiration_date,                 :DT
  # component :assigning_jurisdiction,          :CWE
  # component :assigning_agency_or_department,  :CWE
  # component :security_check,                  :ST
  # component :security_check_scheme,           :ID
end
