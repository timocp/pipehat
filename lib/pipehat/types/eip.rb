# frozen_string_literal: true

# Entity Identifier Pair
Pipehat.define_type :EIP do
  add_component :placer_assigned_identifier, :EI
  add_component :filler_assigned_identifier, :EI
end
