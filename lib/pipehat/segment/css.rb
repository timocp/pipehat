# frozen_string_literal: true

module Pipehat
  module Segment
    # Clinical Study Data Schedule
    class CSS < Base
      add_field :study_scheduled_time_point,         :CWE
      add_field :study_scheduled_patient_time_point, :DTM
      add_field :study_quality_control_codes,        :CWE
    end
  end
end
