# frozen_string_literal: true

# Reference Pointer
Pipehat.define_type :RP do
  add_component :pointer,        :ST
  add_component :application_id, :HD
  add_component :type_of_data,   :ID
  add_component :subtype,        :ID
end
