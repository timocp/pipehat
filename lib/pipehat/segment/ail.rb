# frozen_string_literal: true

module Pipehat
  module Segment
    # Appointment Information – Location Resource
    class AIL < Base
      add_field :set_id,                       :SI
      add_field :segment_action_code,          :ID
      add_field :location_resource_id,         :PL
      add_field :location_type,                :CWE
      add_field :location_group,               :CWE
      add_field :start_date_time,              :DTM
      add_field :start_date_time_offset,       :NM
      add_field :start_date_time_offset_units, :CNE
      add_field :duration,                     :NM
      add_field :duration_units,               :CNE
      add_field :allow_substitution_code,      :CWE
      add_field :filler_status_code,           :CWE
    end
  end
end
