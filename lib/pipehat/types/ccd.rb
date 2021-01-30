# frozen_string_literal: true

# Charge Code and Date
Pipehat.define_type :CCD do
  add_component :invocation_event, :ID
  add_component :date_time,        :DTM
end
