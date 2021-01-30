# frozen_string_literal: true

module Pipehat
  module Segment
    # Cumulative Dosage
    class CDO < Base
      add_field :set_id,                                :SI
      add_field :action_code,                           :ID
      add_field :cumulative_dosage_limit,               :CQ
      add_field :cumulative_dosage_limit_time_interval, :CQ
    end
  end
end
