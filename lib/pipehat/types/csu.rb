# frozen_string_literal: true

# Channel Sensitivity and Units
Pipehat.define_type :CSU do
  add_component :channel_sensitivity,                                       :NM
  add_component :unit_of_measure_identifier,                                :ST
  add_component :unit_of_measure_description,                               :ST
  add_component :unit_of_measure_coding_system,                             :ID
  add_component :alternate_unit_of_measure_identifier,                      :ST
  add_component :alternate_unit_of_measure_description,                     :ST
  add_component :alternate_unit_of_measure_coding_system,                   :ID
  add_component :unit_of_measure_coding_system_version_id,                  :ST
  add_component :alternate_unit_of_measure_coding_system_version_id,        :ST
  add_component :original_text,                                             :ST
  add_component :second_alternate_unit_of_measure_identifier,               :ST
  add_component :second_alternate_unit_of_measure_text,                     :ST
  add_component :name_of_second_alternate_unit_of_measure_coding_system,    :ID
  add_component :second_alternate_unit_of_measure_coding_system_version_id, :ST
  add_component :unit_of_measure_coding_system_oid,                         :ST
  add_component :unit_of_measure_value_set_oid,                             :ST
  add_component :unit_of_measure_value_set_version_id,                      :DTM
  add_component :alternate_unit_of_measure_coding_system_oid,               :ST
  add_component :alternate_unit_of_measure_value_set_oid,                   :ST
  add_component :alternate_unit_of_measure_value_set_version_id,            :DTM
  add_component :second_alternate_unit_of_measure_coding_system_oid,        :ST
  add_component :second_alternate_unit_of_measure_value_set_oid,            :ST
  add_component :second_alternate_unit_of_measure_value_set_version_id,     :ST
end
