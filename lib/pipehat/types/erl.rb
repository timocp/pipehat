# frozen_string_literal: true

# Error Location
Pipehat.define_type :ERL do
  component :segment_id,          :ST
  component :segment_sequence,    :NM
  component :field_position,      :NM
  component :field_repetition,    :NM
  component :component_number,    :NM
  component :subcomponent_number, :NM
end
