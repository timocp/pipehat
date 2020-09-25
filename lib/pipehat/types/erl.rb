# frozen_string_literal: true

# Error Location
Pipehat.define_type :ERL do
  add_component :segment_id,          :ST
  add_component :segment_sequence,    :NM
  add_component :field_position,      :NM
  add_component :field_repetition,    :NM
  add_component :component_number,    :NM
  add_component :subcomponent_number, :NM
end
