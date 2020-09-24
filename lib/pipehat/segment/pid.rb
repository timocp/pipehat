# frozen_string_literal: true

module Pipehat
  module Segment
    # Patient Identification
    class PID < Base
      field :set_id,                                :SI
      field :patient_id,                            :ST
      field :patient_identifier_list,               :CX
    end
  end
end
