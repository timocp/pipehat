# frozen_string_literal: true

# Coded with No Exceptions
Pipehat.define_type :CNE do
  add_component :identifier,                                :ST
  add_component :text,                                      :ST
  add_component :name_of_coding_system,                     :ID
  add_component :alternate_identifier,                      :ST
  add_component :alternate_text,                            :ST
  add_component :name_of_alternate_coding_system,           :ID
  add_component :coding_system_version_id,                  :ST
  add_component :alternate_coding_system_version_id,        :ST
  add_component :original_text,                             :ST
  add_component :second_alternate_identifier,               :ST
  add_component :second_alternate_text,                     :ST
  add_component :name_of_second_alternate_coding_system,    :ID
  add_component :second_alternate_coding_system_version_id, :ST
  add_component :coding_system_oid,                         :ST
  add_component :value_set_oid,                             :ST
  add_component :value_set_version_id,                      :DTM
  add_component :alternate_coding_system_oid,               :ST
  add_component :alternate_value_set_oid,                   :ST
  add_component :alternate_value_set_version_id,            :DTM
  add_component :second_alternate_coding_system_oid,        :ST
  add_component :second_alternate_value_set_oid,            :ST
  add_component :second_alternate_value_set_version_id,     :DTM
end
