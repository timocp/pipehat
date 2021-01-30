# frozen_string_literal: true

# Repeat Pattern
Pipehat.define_type :RPT do
  add_component :repeat_pattern_code,          :CWE
  add_component :calendar_alignment,           :ID
  add_component :phase_range_begin_value,      :NM
  add_component :phase_range_end_value,        :NM
  add_component :period_quantity,              :NM
  add_component :period_units,                 :CWE
  add_component :institution_specified_time,   :ID
  add_component :event,                        :ID
  add_component :event_offset_quantity,        :NM
  add_component :event_offset_units,           :CWE
  add_component :general_timing_specification, :GTS
end
