# frozen_string_literal: true

# Coded with Exceptions
Pipehat.define_type :CWE do
  component :identifier,                                :ST
  component :text,                                      :ST
  component :name_of_coding_system,                     :ID
  component :alternate_identifier,                      :ST
  component :alternate_text,                            :ST
  component :name_of_alternate_coding_system,           :ID
  component :coding_system_version_id,                  :ST
  component :alternate_coding_system_version_id,        :ST
  component :original_text,                             :ST
  component :second_alternate_identifier,               :ST
  component :second_alternate_text,                     :ST
  component :name_of_second_alternate_coding_system,    :ID
  component :second_alternate_coding_system_version_id, :ST
  component :coding_system_oid,                         :ST
  component :value_set_oid,                             :ST
  component :value_set_version_id,                      :DTM
  component :alternate_coding_system_oid,               :ST
  component :alternate_value_set_oid,                   :ST
  component :alternate_value_set_version_id,            :DTM
  component :second_alternate_coding_system_oid,        :ST
  component :second_alternate_value_set_oid,            :ST
  component :second_alternate_value_set_version_id,     :DTM
end
