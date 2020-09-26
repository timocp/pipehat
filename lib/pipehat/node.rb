# frozen_string_literal: true

module Pipehat
  # Parent class of all accessor types (Field, Repeat, (Sub)Component
  # providing common methods
  class Node
    def fnum
      1
    end

    def rnum
      1
    end

    def cnum
      1
    end

    def snum
      1
    end

    def to_s
      segment.parser.unescape(unescaped)
    end

    def unescaped
      segment.get(fnum, rnum, cnum, snum)
    end

    def component_names
      self.class.component_names
    end

    def self.component_names
      @component_names ||= []
    end

    def parser
      segment.parser
    end

    private

    def inspect_node(*nums)
      s = "#<#{self.class} #{segment.segment_name}(#{nums.join(",")}) "
      maxlen = 76 - s.length
      fragment = to_hl7
      fragment = fragment[0, maxlen - 3] + "..." if fragment.length > maxlen
      "#{s}#{fragment}>"
    end
  end
end
