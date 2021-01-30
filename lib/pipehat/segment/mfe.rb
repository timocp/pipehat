# frozen_string_literal: true

module Pipehat
  module Segment
    # Master File Entry
    class MFE < Base
      add_field :record_level_event_code, :ID
      add_field :mfn_control_id,          :ST
      add_field :effective_date_time,     :DTM
      add_field :primary_key_value,       :Varies
      add_field :primary_key_value_type,  :ID
      add_field :entered_date_time,       :DTM
      add_field :entered_by,              :XCN
    end
  end
end
