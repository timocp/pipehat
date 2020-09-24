# frozen_string_literal: true

# Extended Person Name
Pipehat.define_type :XPN do
  component :family_name,                                         :FN
  component :given_name,                                          :ST
  component :second_and_further_given_names_or_initials_thereof,  :ST
  component :suffix,                                              :ST
  component :prefix,                                              :ST
  component :degree,                                              :ST
  component :name_type_code,                                      :ID
  component :name_representation_code,                            :ID
  component :name_context,                                        :CWE
  component :name_validity_range,                                 :ID
  component :name_assembly_order,                                 :DTM
  component :effective_date,                                      :DTM
  component :expiration_date,                                     :DTM
  component :professional_suffix,                                 :ST
  component :called_by,                                           :ST
end
