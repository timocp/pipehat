# frozen_string_literal: true

# Query Input Parameter List
Pipehat.define_type :QIP do
  add_component :segment_field_name, :ST
  add_component :values,             :ST
end
