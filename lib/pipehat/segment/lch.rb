# frozen_string_literal: true

module Pipehat
  module Segment
    # Location Characteristic
    class LCH < Base
      add_field :primary_key_value,             :PL
      add_field :segment_action_code,           :ID
      add_field :segment_unique_key,            :EI
      add_field :location_characteristic_id,    :CWE
      add_field :location_characteristic_value, :CWE
    end
  end
end
