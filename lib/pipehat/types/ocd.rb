# frozen_string_literal: true

# Occurrence Code and Date
Pipehat.define_type :OCD do
  add_component :occurrence_code, :CNE
  add_component :occurrence_date, :DT
end
