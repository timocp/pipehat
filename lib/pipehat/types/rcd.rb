# frozen_string_literal: true

# Row Column Definition
Pipehat.define_type :RCD do
  add_component :segment_field_name,   :ST
  add_component :hl7_data_type,        :ID
  add_component :maximum_column_width, :NM
end
