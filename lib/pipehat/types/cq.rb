# frozen_string_literal: true

# Composite Quantity with Units
Pipehat.define_type :CQ do
  add_component :quantity, :NM
  add_component :units,    :CWE
end
