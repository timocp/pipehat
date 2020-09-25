# frozen_string_literal: true

# Processing Type
Pipehat.define_type :PT do
  add_component :processing_id,   :ID
  add_component :processing_mode, :ID
end
