# frozen_string_literal: true

module Pipehat
  module Segment
    # Product Experience Sender
    class PES < Base
      add_field :sender_organization_name, :XON
      add_field :sender_individual_name,   :XCN
      add_field :sender_address,           :XAD
      add_field :sender_telephone,         :XTN
      add_field :sender_event_identifier,  :EI
      add_field :sender_sequence_number,   :NM
      add_field :sender_event_description, :FT
      add_field :sender_comment,           :FT
      add_field :sender_aware_date_time,   :DTM
      add_field :event_report_date,        :DTM
      add_field :event_report_timing_type, :ID
      add_field :event_report_source,      :ID
      add_field :event_reported_to,        :ID
    end
  end
end
