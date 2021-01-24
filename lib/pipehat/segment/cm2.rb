# frozen_string_literal: true

module Pipehat
  module Segment
    # Clinical Study Schedule Master
    class CM2 < Base
      add_field :set_id,                           :SI
      add_field :scheduled_time_point,             :CWE
      add_field :description_of_time_point,        :ST
      add_field :events_scheduled_this_time_point, :CWE
    end
  end
end
