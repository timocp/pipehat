# frozen_string_literal: true

# Date/Time Range
Pipehat.define_type :DR do
  add_component :range_start_date_time, :DTM
  add_component :range_end_date_time,   :DTM
end
