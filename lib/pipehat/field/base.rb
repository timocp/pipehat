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
    end
  end
end
