# frozen_string_literal: true

# Extended Composite Name and Identification Number for Organizations
Pipehat.define_type :XON do
  component :organization_name,           :ST
  component :organization_name_type_code, :CWE
  component :id_number,                   :ST
  component :identifier_check_digit,      :ST
  component :check_digit_scheme,          :ST
  component :assigning_authority,         :HD
  component :identifier_type_code,        :ID
  component :assigning_facility,          :HD
  component :name_representation_code,    :ID
  component :organization_identifier,     :ST
end
