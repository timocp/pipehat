module Pipehat
  module Repeat
    class Base
      def initialize(segment, fnum, rnum)
        @segment = segment
        @fnum = fnum
        @rnum = rnum
      end

      def component(cnum)
        Pipehat::Component::Base.new(@segment, @fnum, @rnum, cnum)
      end

      def to_s
        @segment.get(@fnum, @rnum, 1, 1)
      end

      def set(value)
        @segment.set_repeat(@fnum, @rnum, value)
      end
    end
  end
end
