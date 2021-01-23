# frozen_string_literal: true

# Error Location and Description
Pipehat.define_type :ELD do
  add_component :segment_id,             :ST
  add_component :segment_sequence,       :NM
  add_component :field_position,         :NM
  add_component :code_identifying_error, :CE
end
