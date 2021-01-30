# frozen_string_literal: true

# Extended Person Name
Pipehat.define_type :XPN do
  add_component :family_name,                                        :FN
  add_component :given_name,                                         :ST
  add_component :second_and_further_given_names_or_initials_thereof, :ST
  add_component :suffix,                                             :ST
  add_component :prefix,                                             :ST
  add_component :degree,                                             :IS
  add_component :name_type_code,                                     :ID
  add_component :name_representation_code,                           :ID
  add_component :name_context,                                       :CWE
  add_component :name_validity_range,                                :DR
  add_component :name_assembly_order,                                :ID
  add_component :effective_date,                                     :DTM
  add_component :expiration_date,                                    :DTM
  add_component :professional_suffix,                                :ST
  add_component :called_by,                                          :ST
end
