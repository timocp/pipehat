# frozen_string_literal: true

module Pipehat
  module Segment
    # Special handling of header segments (MSH, FHS and BHS) which include
    # field separator / encoding characters.
    class Header < Base
      # Inject the field separator and encoding characters from the parser
      # instead of the actual segment
      def initialize(string = nil, parser: Pipehat::DEFAULT_PARSER)
        super
        @data.insert(1, [[[parser.field_sep]]])
        @data[2] = [[[parser.msh2]]]
      end

      def to_hl7
        # Same as Base, but just drop the field separator since it will be
        # added by the join
        @data.each_with_index.reject { |_field, i| i == 1 }.map do |field, _i|
          (field || []).map do |repeat|
            (repeat || []).map do |component|
              (component || []).join(parser.subcomponent_sep)
            end.join(parser.component_sep)
          end.join(parser.repetition_sep)
        end.join(parser.field_sep)
      end
    end
  end
end
