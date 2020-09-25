# frozen_string_literal: true

# Entity Identifier
Pipehat.define_type :EI do
  add_component :entity_identifier, :ST
  add_component :namespace_id,      :IS
  add_component :universal_id,      :ST
  add_component :universal_id_type, :ID
end
