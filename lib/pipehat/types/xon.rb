# frozen_string_literal: true

# Extended Composite Name and Identification Number for Organizations
Pipehat.define_type :XON do
  add_component :organization_name,           :ST
  add_component :organization_name_type_code, :CWE
  add_component :id_number,                   :NM
  add_component :identifier_check_digit,      :NM
  add_component :check_digit_scheme,          :ID
  add_component :assigning_authority,         :HD
  add_component :identifier_type_code,        :ID
  add_component :assigning_facility,          :HD
  add_component :name_representation_code,    :ID
  add_component :organization_identifier,     :ST
end
