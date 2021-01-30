# frozen_string_literal: true

# Occurrence Span Code and Date
Pipehat.define_type :OSP do
  add_component :occurrence_span_code,       :CNE
  add_component :occurrence_span_start_date, :DT
  add_component :occurrence_span_stop_date,  :DT
end
