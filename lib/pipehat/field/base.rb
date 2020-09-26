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

      # Set on a field should replace the entire tree at this field
      # This should discard anything under repeats etc
      def set(value)
        segment.set_field(fnum, value)
      end

      # calling component(n) on a field assumes you mean the first repeat
      def component(cnum, type = Pipehat::Component::Base)
        first.component(cnum, type)
      end

      private

      def repeat_class
        Object.const_get(self.class.name.sub(/Field/, "Repeat"))
      end
    end
  end
end
