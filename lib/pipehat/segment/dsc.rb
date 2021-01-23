# frozen_string_literal: true

module Pipehat
  module Segment
    # Continuation Pointer
    class DSC < Base
      add_field :continuation_pointer, :ST
      add_field :continuation_style,   :ID
    end
  end
end
