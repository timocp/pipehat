# frozen_string_literal: true

# Composite ID Number and Name Simplified
Pipehat.define_type :CNN do
  add_component :id_number,                                          :ST
  add_component :family_name,                                        :ST
  add_component :given_name,                                         :ST
  add_component :second_and_further_given_names_or_initials_thereof, :ST
  add_component :suffix,                                             :ST
  add_component :prefix,                                             :ST
  add_component :degree,                                             :IS
  add_component :source_table,                                       :IS
  add_component :assigning_authority_namespace_id,                   :IS
  add_component :assigning_authority_universal_id,                   :ST
  add_component :assigning_authority_universal_id_type,              :ID
end
