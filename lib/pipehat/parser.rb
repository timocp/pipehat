# frozen_string_literal: true

module Pipehat
  class Parser
    def segment_sep
      "\\r"
    end

    def field_sep
      "|"
    end

    def repetition_sep
      "~"
    end

    def component_sep
      "^"
    end

    def subcomponent_sep
      "&"
    end

    def escape_char
      "\\"
    end
  end

  DEFAULT_PARSER = Parser.new
end
