# frozen_string_literal: true

# Discharge to Location and Date
Pipehat.define_type :DLD do
  add_component :discharge_to_location, :CWE
  add_component :effective_date,        :DTM
end
