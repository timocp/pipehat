# frozen_string_literal: true

module Pipehat
  module Field
    class Base < Pipehat::Node
      def initialize(segment, fnum)
        @segment = segment
        @fnum = fnum
      end

      attr_reader :segment, :fnum

      def repeat(rnum)
        Pipehat::Repeat::Base.new(segment, fnum, rnum)
      end

      # Set on a field should replace the entire tree at this field
      # This should discard anything under repeats etc
      def set(value)
        segment.set_field(fnum, value)
      end
    end
  end
end
