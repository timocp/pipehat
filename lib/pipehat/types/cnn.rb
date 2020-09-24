# frozen_string_literal: true

# Composite ID Number and Name Simplified
Pipehat.define_type :CNN do
  component :id_number,                                           :ST
  component :family_name,                                         :ST
  component :given_name,                                          :ST
  component :second_and_further_given_names_or_initials_thereof,  :ST
  component :suffix,                                              :ST
  component :prefix,                                              :ST
  component :degree,                                              :IS
  component :source_table,                                        :IS
  component :assigning_authority_namespace_id,                    :IS
  component :assigning_authority_universal_id,                    :ST
  component :assigning_authority_universal_id_type,               :ID
end
