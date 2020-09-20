module Pipehat
  module Component
    class Base < Pipehat::Node
      def initialize(segment, fnum, rnum, cnum)
        @segment = segment
        @fnum = fnum
        @rnum = rnum
        @cnum = cnum
      end

      attr_reader :segment, :fnum, :rnum, :cnum

      def subcomponent(snum)
        Pipehat::Subcomponent::Base.new(segment, fnum, rnum, cnum, snum)
      end

      def set(value)
        segment.set_component(fnum, rnum, cnum, value)
      end
    end
  end
end
