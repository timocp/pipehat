# frozen_string_literal: true

# Repeat Interval
Pipehat.define_type :RI do
  add_component :repeat_pattern,         :CWE
  add_component :explicit_time_interval, :ST
end
