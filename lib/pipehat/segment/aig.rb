# frozen_string_literal: true

module Pipehat
  module Segment
    # Appointment Information – General Resource
    class AIG < Base
      add_field :set_id,                       :SI
      add_field :segment_action_code,          :ID
      add_field :resource_id,                  :CWE
      add_field :resource_type,                :CWE
      add_field :resource_group,               :CWE
      add_field :resource_quantity,            :NM
      add_field :resource_quantity_units,      :CNE
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
