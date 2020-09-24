# frozen_string_literal: true

# Entity Identifier Pair
Pipehat.define_type :EIP do
  component :placer_assigned_identifier, :EI
  component :filler_assigned_identifier, :EI
end
