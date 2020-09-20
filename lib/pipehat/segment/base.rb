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
