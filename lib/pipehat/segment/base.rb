# frozen_string_literal: true

module Pipehat
  module Segment
    class Base
      def initialize(string, parser: Pipehat::DEFAULT_PARSER)
        # storage is nested array (to depth of subcomponents).  The unescaped
        # strings is stored (escape/unescape occurs in accessors).
        @data = string.split(parser.field_sep).map do |field|
          field.split(parser.repetition_sep).map do |repeat|
            repeat.split(parser.component_sep).map do |component|
              component.split(parser.subcomponent_sep)
            end
          end
        end
        @parser = parser
      end

      # Returns a reference to a field by number
      def field(fnum)
        Pipehat::Field::Base.new(self, fnum)
      end

      # Return the raw (escaped) string at the specified position.
      # If the position doesn't exist, returns nil.
      #
      # Note this works by assuming @data always has arrays nesting to
      # the subcomponent position
      def get(fnum, rnum, cnum, snum)
        @data.dig(fnum)&.dig(rnum - 1)&.dig(cnum - 1)&.dig(snum - 1)
      end

      attr_accessor :parser

      def to_hl7
        @data.map do |field|
          field.map do |repeat|
            repeat.map do |component|
              component.join(parser.subcomponent_sep)
            end.join(parser.component_sep)
          end.join(parser.repetition_sep)
        end.join(parser.field_sep)
      end
    end
  end
end
