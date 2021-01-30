# frozen_string_literal: true

module Pipehat
  module Segment
    # Combat Zone Work
    class OH4 < Base
      add_field :set_id,                        :SI
      add_field :action_code,                   :ID
      add_field :combat_zone_start_date,        :DT
      add_field :combat_zone_end_date,          :DT
      add_field :entered_date,                  :DT
      add_field :combat_zone_unique_identifier, :EI
    end
  end
end
