# frozen_string_literal: true

# Message Type
Pipehat.define_type :MSG do
  add_component :message_code,      :ID
  add_component :trigger_event,     :ID
  add_component :message_structure, :ID
end
