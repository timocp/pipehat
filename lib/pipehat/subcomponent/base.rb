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

      def to_hl7
        segment.tree(fnum, rnum, cnum, snum)
      end

      def inspect
        inspect_node(fnum, rnum, cnum, snum)
      end
    end
  end
end
