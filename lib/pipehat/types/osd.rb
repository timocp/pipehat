# frozen_string_literal: true

# Order Sequence Definition
Pipehat.define_type :OSD do
  add_component :sequence_results_flag,                 :ID
  add_component :placer_order_number_entity_identifier, :ST
  add_component :placer_order_number_namespace_id,      :IS
  add_component :filler_order_number_entity_identifier, :ST
  add_component :filler_order_number_namespace_id,      :IS
  add_component :sequence_condition_value,              :ST
  add_component :maximum_number_of_repeats,             :NM
  add_component :placer_order_number_universal_id,      :ST
  add_component :placer_order_number_universal_id_type, :ID
  add_component :filler_order_number_universal_id,      :ST
  add_component :filler_order_number_universal_id_type, :ID
end
