module Pipehat
  module Repeat
    class Base < Pipehat::Node
      def initialize(segment, fnum, rnum)
        @segment = segment
        @fnum = fnum
        @rnum = rnum
      end

      attr_reader :segment, :fnum, :rnum

      def component(cnum, type = Pipehat::Component::Base)
        type.new(segment, fnum, rnum, cnum)
      end

      def set(value)
        segment.set_repeat(fnum, rnum, value)
      end
    end
  end
end
