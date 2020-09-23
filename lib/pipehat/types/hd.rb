# frozen_string_literal: true

# Hierarchic Designator
Pipehat.define_type :HD do
  component :namespace_id,      :IS
  component :universal_id,      :ST
  component :universal_id_type, :ID
end
