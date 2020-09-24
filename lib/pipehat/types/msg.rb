# frozen_string_literal: true

# Message Type
Pipehat.define_type :MSG do
  component :message_code,      :ID
  component :trigger_event,     :ID
  component :message_structure, :ID
end
