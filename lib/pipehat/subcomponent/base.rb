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
    end
  end
end
