# frozen_string_literal: true

# Parent Result Link
Pipehat.define_type :PRL do
  component :parent_observation_identifier,       :CWE
  component :parent_observation_sub_identifier,   :ST
  component :parent_observation_value_descriptor, :TX
end
