# frozen_string_literal: true

module Pipehat
  module Segment
    # Event Type
    class EVN < Base
      add_field :event_type_code,         :ID
      add_field :recorded_date_time,      :DTM
      add_field :date_time_planned_event, :DTM
      add_field :event_reason_code,       :CWE
      add_field :operator_id,             :XCN
      add_field :event_occurred,          :DTM
      add_field :event_facility,          :HD
    end
  end
end
