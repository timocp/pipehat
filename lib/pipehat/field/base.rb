# frozen_string_literal: true

module Pipehat
  module Field
    class Base < Pipehat::Node
      def initialize(segment, fnum)
        @segment = segment
        @fnum = fnum
      end

      attr_reader :segment, :fnum

      def repeat(rnum)
        repeat_class.new(segment, fnum, rnum)
      end

      def [](rnum)
        repeat(rnum)
      end

      def []=(rnum, value)
        repeat(rnum).set(value)
      end

      def first
        repeat(1)
      end

      def first=(value)
        repeat(1).set(value)
      end

      # Set on a field should replace the entire tree at this field
      # This should discard anything under repeats etc
      def set(value)
        segment.set_field(fnum, value)
      end

      # calling component(n) on a field assumes you mean the first repeat
      def component(cnum, type = Pipehat::Component::Base)
        first.component(cnum, type)
      end

      def to_hl7
        (segment.tree(fnum) || []).map do |repeat|
          (repeat || []).map do |component|
            (component || []).join(parser.subcomponent_sep)
          end.join(parser.component_sep)
        end.join(parser.repetition_sep)
      end

      def inspect
        inspect_node(fnum)
      end

      private

      def repeat_class
        Object.const_get(self.class.name.sub(/Field/, "Repeat"))
      end
    end
  end
end
