module Pipehat
  module Component
    class Base
      def initialize(segment, fnum, rnum, cnum)
        @segment = segment
        @fnum = fnum
        @rnum = rnum
        @cnum = cnum
      end

      def subcomponent(snum)
        Pipehat::Subcomponent::Base.new(@segment, @fnum, @rnum, @cnum, snum)
      end

      def to_s
        @segment.get(@fnum, @rnum, @cnum, 1)
      end
    end
  end
end
