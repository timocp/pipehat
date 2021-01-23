# frozen_string_literal: true

# Channel Definition
Pipehat.define_type :CD do
  add_component :channel_identifier,              :WVI
  add_component :waveform_source,                 :WVS
  add_component :channel_sensitivity_and_units,   :CSU
  add_component :channel_calibration_parameters,  :CCP
  add_component :channel_sampling_frequency,      :NM
  add_component :minimum_and_maximum_data_values, :NR
end
