# frozen_string_literal: true

# Message Location
Pipehat.define_type :ERL do
  add_component :segment_id,           :ST
  add_component :segment_sequence,     :SI
  add_component :field_position,       :SI
  add_component :field_repetition,     :SI
  add_component :component_number,     :SI
  add_component :sub_component_number, :SI
end
