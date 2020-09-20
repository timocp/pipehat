module Pipehat
  module Subcomponent
    class Base < Pipehat::Node
      def initialize(segment, fnum, rnum, cnum, snum)
        @segment = segment
        @fnum = fnum
        @rnum = rnum
        @cnum = cnum
        @snum = snum
      end

      attr_reader :segment, :fnum, :rnum, :cnum, :snum

      def set(value)
        segment.set_subcomponent(fnum, rnum, cnum, snum, value)
      end
    end
  end
end
