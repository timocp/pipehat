# frozen_string_literal: true

# Observation Grouper
Pipehat.define_type :OG do
  add_component :original_sub_identifier, :ST
  add_component :group,                   :NM
  add_component :sequence,                :NM
  add_component :identifier,              :ST
end
