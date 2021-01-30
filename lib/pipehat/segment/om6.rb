# frozen_string_literal: true

module Pipehat
  module Segment
    # Observations that are Calculated from Other Observations
    class OM6 < Base
      add_field :sequence_number, :NM
      add_field :derivation_rule, :TX
    end
  end
end
