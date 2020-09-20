module Pipehat
  module Subcomponent
    class Base
      def initialize(segment, fnum, rnum, cnum, snum)
        @segment = segment
        @fnum = fnum
        @rnum = rnum
        @cnum = cnum
        @snum = snum
      end

      def to_s
        @segment.get(@fnum, @rnum, @cnum, @snum)
      end

      def set(value)
        @segment.set_subcomponent(@fnum, @rnum, @cnum, @snum, value)
      end
    end
  end
end
