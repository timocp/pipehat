# frozen_string_literal: true

module Pipehat
  module Field
    class Base
      def initialize(segment, fnum)
        @segment = segment
        @fnum = fnum
      end

      def repeat(rnum)
        Pipehat::Repeat::Base.new(@segment, @fnum, rnum)
      end

      def to_s
        @segment.get(@fnum, 1, 1, 1)
      end

      # Set on a field should replace the entire tree at this field
      # This should discard anything under repeats etc
      def set(value)
        @segment.set_field(@fnum, value)
      end
    end
  end
end
