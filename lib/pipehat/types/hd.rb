# frozen_string_literal: true

# Hierarchic Designator
Pipehat.define_type :HD do
  add_component :namespace_id,      :IS
  add_component :universal_id,      :ST
  add_component :universal_id_type, :ID
end
