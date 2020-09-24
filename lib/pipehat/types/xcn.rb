# frozen_string_literal: true

# Extended Composite ID Number and Name for Persons
Pipehat.define_type :XCN do
  component :person_identifier,                                   :ST
  component :family_name,                                         :FN
  component :given_name,                                          :ST
  component :second_and_further_given_names_or_initials_thereof,  :ST
  component :suffix,                                              :ST
  component :prefix,                                              :ST
  component :degree,                                              :ST
  component :source_table,                                        :CWE
  component :assigning_authority,                                 :HD
  component :name_type_code,                                      :ID
  component :identifier_check_digit,                              :ST
  component :check_digit_scheme,                                  :ID
  component :identifier_type_code,                                :ID
  component :assigning_facility,                                  :HD
  component :name_representation_code,                            :ID
  component :name_context,                                        :CWE
  component :name_validity_range,                                 :ST
  component :name_assembly_order,                                 :ID
  component :effective_date,                                      :DTM
  component :expiration_date,                                     :DTM
  component :professional_suffix,                                 :ST
  component :assigning_jurisdiction,                              :CWE
  component :assigning_agency_or_department,                      :CWE
  component :security_check,                                      :ST
  component :security_check_scheme,                               :ID
end
