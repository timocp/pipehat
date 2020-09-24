# frozen_string_literal: true

# Entity Identifier
Pipehat.define_type :EI do
  component :entity_identifier, :ST
  component :namespace_id,      :IS
  component :universal_id,      :ST
  component :universal_id_type, :ID
end
