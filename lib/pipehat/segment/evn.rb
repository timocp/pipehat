# frozen_string_literal: true

module Pipehat
  module Segment
    # Event Type
    class EVN < Base
      add_field :event_type_code,     :ID
      add_field :recorded_date_time,  :TS
      add_field :date_time_planned,   :TS
      add_field :event_reason_code,   :IS
      add_field :operator_id,         :XCN
      add_field :event_occurred,      :TS
      add_field :event_facility,      :HD
    end
  end
end
