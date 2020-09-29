# frozen_string_literal: true

module Pipehat
  class Message
    def initialize(hl7 = "", parser: Pipehat::DEFAULT_PARSER)
      @parser = parser
      @segments = parser.parse(hl7)
    end

    attr_reader :parser

    def to_hl7
      @segments.map(&:to_hl7).join(parser.segment_sep)
    end

    def <<(segment)
      @segments << segment
    end

    def append(type)
      segment = Pipehat::Segment.const_get(type).new(nil, parser: parser)
      yield segment if block_given?
      @segments << segment
      segment
    end

    def insert(index, type)
      segment = Pipehat::Segment.const_get(type).new(nil, parser: parser)
      yield segment if block_given?
      @segments.insert(index, segment)
      segment
    end

    # Returns an enumerator over the message's segments
    # The optional parameter limits it to the given type
    def each(type = nil)
      return to_enum(:each, type) unless block_given?

      @segments.each do |segment|
        next if type && segment.segment_name != type.to_s

        yield segment
      end
    end
  end
end
