# frozen_string_literal: true

module Pipehat
  module Segment
    # Location Relationship
    class LRL < Base
      add_field :primary_key_value,                          :PL
      add_field :segment_action_code,                        :ID
      add_field :segment_unique_key,                         :EI
      add_field :location_relationship_id,                   :CWE
      add_field :organizational_location_relationship_value, :XON
      add_field :patient_location_relationship_value,        :PL
    end
  end
end
