# frozen_string_literal: true

# Extended Composite ID Number and Name for Persons
Pipehat.define_type :XCN do
  add_component :person_identifier,                                  :ST
  add_component :family_name,                                        :FN
  add_component :given_name,                                         :ST
  add_component :second_and_further_given_names_or_initials_thereof, :ST
  add_component :suffix,                                             :ST
  add_component :prefix,                                             :ST
  add_component :degree,                                             :IS
  add_component :source_table,                                       :CWE
  add_component :assigning_authority,                                :HD
  add_component :name_type_code,                                     :ID
  add_component :identifier_check_digit,                             :ST
  add_component :check_digit_scheme,                                 :ID
  add_component :identifier_type_code,                               :ID
  add_component :assigning_facility,                                 :HD
  add_component :name_representation_code,                           :ID
  add_component :name_context,                                       :CWE
  add_component :name_validity_range,                                :DR
  add_component :name_assembly_order,                                :ID
  add_component :effective_date,                                     :DTM
  add_component :expiration_date,                                    :DTM
  add_component :professional_suffix,                                :ST
  add_component :assigning_jurisdiction,                             :CWE
  add_component :assigning_agency_or_department,                     :CWE
  add_component :security_check,                                     :ST
  add_component :security_check_scheme,                              :ID
end
