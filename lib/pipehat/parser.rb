# frozen_string_literal: true

require "strscan"

module Pipehat
  class Parser
    def segment_sep
      "\r"
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

    def escaped_field_sep
      "#{escape_char}F#{escape_char}"
    end

    def escaped_repetition_sep
      "#{escape_char}R#{escape_char}"
    end

    def escaped_component_sep
      "#{escape_char}S#{escape_char}"
    end

    def escaped_subcomponent_sep
      "#{escape_char}T#{escape_char}"
    end

    def escaped_escape_char
      "#{escape_char}E#{escape_char}"
    end

    def escaped_field_sep_regex
      @escaped_field_sep_regex ||= Regexp.new Regexp.quote escaped_field_sep
    end

    def escaped_repetition_sep_regex
      @escaped_repetition_sep_regex ||= Regexp.new Regexp.quote escaped_repetition_sep
    end

    def escaped_component_sep_regex
      @escaped_component_sep_regex ||= Regexp.new Regexp.quote escaped_component_sep
    end

    def escaped_subcomponent_sep_regex
      @escaped_subcomponent_sep_regex ||= Regexp.new Regexp.quote escaped_subcomponent_sep
    end

    def escaped_escape_char_regex
      @escaped_escape_char_regex ||= Regexp.new Regexp.quote escaped_escape_char
    end

    def escaped_hex_regex
      @escaped_hex_regex ||= Regexp.new "#{Regexp.quote escape_char}X\\h+#{Regexp.quote escape_char}"
    end

    def msh2
      @msh2 ||= [
        component_sep,
        repetition_sep,
        escape_char,
        subcomponent_sep
      ].join
    end

    def escape(string)
      return "" if string.nil?

      string.each_char.map do |chr|
        case chr
        when field_sep then escaped_field_sep
        when repetition_sep then escaped_repetition_sep
        when component_sep then escaped_component_sep
        when subcomponent_sep then escaped_subcomponent_sep
        when escape_char then escaped_escape_char
        else
          if (32.chr..127.chr).cover?(chr)
            chr
          else
            format("\\X%02X\\", chr.ord)
          end
        end
      end.join
    end

    def unescape(string)
      return "" if string.nil?
      return string unless string.include?(escape_char)

      s = StringScanner.new(string)
      out = String.new
      until s.eos?
        if s.scan(escaped_field_sep_regex)
          out << field_sep
        elsif s.scan(escaped_repetition_sep_regex)
          out << repetition_sep
        elsif s.scan(escaped_component_sep_regex)
          out << component_sep
        elsif s.scan(escaped_subcomponent_sep_regex)
          out << subcomponent_sep
        elsif s.scan(escaped_escape_char_regex)
          out << escape_char
        elsif s.scan(escaped_hex_regex)
          s.matched[2..-2].scan(/../).each { |hex| out << hex.to_i(16).chr }
        else
          out << s.getch
        end
      end
      out
    end

    # Returns an array of Pipehat::Segments of the right class
    def parse(hl7)
      hl7.split(segment_sep).map do |seg|
        name = seg[0, seg.index("|")]
        klass = if Pipehat::Segment.const_defined?(name)
                  Pipehat::Segment.const_get(name)
                else
                  Pipehat::Segment::Base
                end
        klass.new(seg, parser: self)
      end
    end

    def inspect
      "#<#{self.class} #{field_sep}#{msh2}>"
    end
  end

  DEFAULT_PARSER = Parser.new
end
