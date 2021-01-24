# frozen_string_literal: true

module Pipehat
  module Segment
    # Display Data
    class DSP < Base
      add_field :set_id,              :SI
      add_field :display_level,       :SI
      add_field :data_line,           :TX
      add_field :logical_break_point, :ST
      add_field :result_id,           :TX
    end
  end
end
