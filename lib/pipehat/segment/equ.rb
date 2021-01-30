# frozen_string_literal: true

module Pipehat
  module Segment
    # Equipment Detail
    class EQU < Base
      add_field :equipment_instance_identifier,                :EI
      add_field :event_date_time,                              :DTM
      add_field :equipment_state,                              :CWE
      add_field :local_remote_control_state,                   :CWE
      add_field :alert_level,                                  :CWE
      add_field :expected_date_time_of_the_next_status_change, :DTM
    end
  end
end
