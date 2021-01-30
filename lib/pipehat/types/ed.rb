# frozen_string_literal: true

# Encapsulated Data
Pipehat.define_type :ED do
  add_component :source_application, :HD
  add_component :type_of_data,       :ID
  add_component :data_subtype,       :ID
  add_component :encoding,           :ID
  add_component :data,               :TX
end
