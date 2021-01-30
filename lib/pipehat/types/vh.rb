# frozen_string_literal: true

# Visiting Hours
Pipehat.define_type :VH do
  add_component :start_day_range,  :ID
  add_component :end_day_range,    :ID
  add_component :start_hour_range, :TM
  add_component :end_hour_range,   :TM
end
