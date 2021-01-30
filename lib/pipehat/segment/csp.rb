# frozen_string_literal: true

module Pipehat
  module Segment
    # Clinical Study Phase
    class CSP < Base
      add_field :study_phase_identifier,      :CWE
      add_field :date_time_study_phase_began, :DTM
      add_field :date_time_study_phase_ended, :DTM
      add_field :study_phase_evaluability,    :CWE
    end
  end
end
