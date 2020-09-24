# frozen_string_literal: true

# Composite Quantity with Units
Pipehat.define_type :CQ do
  component :quantity,  :NM
  component :units,     :CWE
end
