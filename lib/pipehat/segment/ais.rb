# frozen_string_literal: true

module Pipehat
  module Segment
    # Appointment Information
    class AIS < Base
      add_field :set_id,                                  :SI
      add_field :segment_action_code,                     :ID
      add_field :universal_service_identifier,            :CWE
      add_field :start_date_time,                         :DTM
      add_field :start_date_time_offset,                  :NM
      add_field :start_date_time_offset_units,            :CNE
      add_field :duration,                                :NM
      add_field :duration_units,                          :CNE
      add_field :allow_substitution_code,                 :CWE
      add_field :filler_status_code,                      :CWE
      add_field :placer_supplemental_service_information, :CWE
      add_field :filler_supplemental_service_information, :CWE
    end
  end
end
