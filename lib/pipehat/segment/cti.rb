# frozen_string_literal: true

module Pipehat
  module Segment
    # Clinical Trial Identification
    class CTI < Base
      add_field :sponsor_study_id,           :EI
      add_field :study_phase_identifier,     :CWE
      add_field :study_scheduled_time_point, :CWE
      add_field :action_code,                :ID
    end
  end
end
