# frozen_string_literal: true

module Pipehat
  module Segment
    class Base
      def initialize(string = nil, parser: Pipehat::DEFAULT_PARSER)
        string ||= self.class.name.split("::").last
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
      def field(fnum, type = Pipehat::Field::Base)
        type.new(self, fnum)
      end

      # Return the raw (unescaped) string at the specified position.
      # If the position doesn't exist, returns nil.
      #
      # Note this works by assuming @data always has arrays nesting to
      # the subcomponent position
      def get(fnum, rnum, cnum, snum)
        tree(fnum, rnum, cnum, snum)
      end

      def tree(fnum, rnum = nil, cnum = nil, snum = nil)
        tmp = @data.dig(fnum)
        tmp = tmp&.dig(rnum - 1) if rnum
        tmp = tmp&.dig(cnum - 1) if cnum
        tmp = tmp&.dig(snum - 1) if snum
        tmp
      end

      # TODO: set_* currently assume a string only.  Would be good to accept
      # and insert arrays (for nodes higher than subcomponents)
      # There should also be a way to avoid the escaping (eg, FT values use
      # escape sequences that shouldn't be escaped again).

      def set_field(fnum, value)
        @data[fnum] = [[[parser.escape(value)]]]
      end

      def set_repeat(fnum, rnum, value)
        @data[fnum] ||= [[[]]]
        @data[fnum][rnum - 1] = [[parser.escape(value)]]
      end

      def set_component(fnum, rnum, cnum, value)
        @data[fnum] ||= [[[]]]
        @data[fnum][rnum - 1] ||= [[]]
        @data[fnum][rnum - 1][cnum - 1] = [parser.escape(value)]
      end

      def set_subcomponent(fnum, rnum, cnum, snum, value)
        @data[fnum] ||= [[[]]]
        @data[fnum][rnum - 1] ||= [[]]
        @data[fnum][rnum - 1][cnum - 1] ||= []
        @data[fnum][rnum - 1][cnum - 1][snum - 1] = parser.escape(value)
      end

      def field_names
        self.class.field_names
      end

      def segment_name
        field(0).to_s
      end

      attr_accessor :parser

      def to_hl7
        @data.map do |field|
          (field || []).map do |repeat|
            (repeat || []).map do |component|
              (component || []).join(parser.subcomponent_sep)
            end.join(parser.component_sep)
          end.join(parser.repetition_sep)
        end.join(parser.field_sep)
      end

      class << self
        # returns a list of the fields define on this segment as symbols
        def field_names
          @field_names ||= []
        end

        def add_field(name, type, options = {})
          field_names << name
          count = field_names.size
          klass = Object.const_get("Pipehat::Field::#{type}")

          invalid_options = options.keys - %i[setter]
          raise "Invalid options: #{invalid_options.join(", ")}" if invalid_options.any?

          define_method name do
            field(count, klass)
          end

          return unless options.fetch(:setter, true)

          define_method "#{name}=" do |value|
            send(name).set(value)
          end
        end
      end

      def inspect
        s = "#<#{self.class} "
        maxlen = 76 - s.length
        fragment = to_hl7
        fragment = fragment[0, maxlen - 3] + "..." if fragment.length > maxlen
        "#{s}#{fragment}>"
      end
    end
  end
end
