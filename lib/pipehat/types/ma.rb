# frozen_string_literal: true

# Multiplexed Array
Pipehat.define_type :MA do
  add_component :sample_y_from_channel_1, :NM
  add_component :sample_y_from_channel_2, :NM
  add_component :sample_y_from_channel_3, :NM
  add_component :sample_y_from_channel_4, :NM
end
