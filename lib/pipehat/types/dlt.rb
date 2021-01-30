# frozen_string_literal: true

# Delta
Pipehat.define_type :DLT do
  add_component :normal_range,       :NR
  add_component :numeric_threshold,  :NM
  add_component :change_computation, :ID
  add_component :days_retained,      :NM
end
