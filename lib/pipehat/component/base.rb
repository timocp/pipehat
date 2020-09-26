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

      def subcomponent(snum, type = Pipehat::Subcomponent::Base)
        type.new(segment, fnum, rnum, cnum, snum)
      end

      def set(value)
        segment.set_component(fnum, rnum, cnum, value)
      end

      def to_hl7
        (segment.tree(fnum, rnum, cnum) || []).join(parser.subcomponent_sep)
      end

      def inspect
        inspect_node(fnum, rnum, cnum)
      end
    end
  end
end
