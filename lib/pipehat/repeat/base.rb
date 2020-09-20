module Pipehat
  module Repeat
    class Base
      def initialize(segment, fnum, rnum)
        @segment = segment
        @fnum = fnum
        @rnum = rnum
      end

      def to_s
        @segment.get(@fnum, @rnum, 1, 1)
      end
    end
  end
end
