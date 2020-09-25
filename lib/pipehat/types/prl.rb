# frozen_string_literal: true

# Parent Result Link
Pipehat.define_type :PRL do
  add_component :parent_observation_identifier,       :CWE
  add_component :parent_observation_sub_identifier,   :ST
  add_component :parent_observation_value_descriptor, :TX
end
