# frozen_string_literal: true

module Pipehat
  module Segment
    # Clinical Study Phase Master
    class CM1 < Base
      add_field :set_id,                     :SI
      add_field :study_phase_identifier,     :CWE
      add_field :description_of_study_phase, :ST
    end
  end
end
