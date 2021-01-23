# frozen_string_literal: true

# Channel Identifier
Pipehat.define_type :WVI do
  add_component :channel_number, :NM
  add_component :channel_name,   :ST
end
