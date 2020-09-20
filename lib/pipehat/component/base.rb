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

      def set(value)
        @segment.set_component(@fnum, @rnum, @cnum, value)
      end
    end
  end
end
