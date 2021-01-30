# frozen_string_literal: true

# Channel Calibration Parameters
Pipehat.define_type :CCP do
  add_component :channel_calibration_sensitivity_correction_factor, :NM
  add_component :channel_calibration_baseline,                      :NM
  add_component :channel_calibration_time_skew,                     :NM
end
