# frozen_string_literal: true

module Pipehat
  module Segment
    # Bed Status Update
    class NPU < Base
      add_field :bed_location, :PL
      add_field :bed_status,   :CWE
    end
  end
end
