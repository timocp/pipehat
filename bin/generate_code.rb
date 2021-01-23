#! /usr/bin/env ruby
# frozen_string_literal: true

# Script to generate pipehat classes for types/segments
#
# This went throughs several iterations of trying to parse this data from the
# PDF versions of the HL7 standard but it was too tricky.  So now we're storing
# the data in manually maintained CSV files.

require "csv"
require "bundler/setup"
require "pry"

class CodeGenerator
  def generate!
    generate_types
    generate_segments
  end

  # Given a name/description, convert it into a string suitable to use as a
  # method name in ruby
  def self.normalise(name)
    name
      .downcase
      .gsub(/\(.*\)$/, "")
      .gsub(/'s/, "s")
      .gsub(/[^a-z0-9]/, " ")
      .strip
      .squeeze(" ")
      .gsub(" ", "_")
  end

  private

  Component = Struct.new(:type, :name) do
    def method_name
      CodeGenerator.normalise(name)
    end
  end

  Type = Struct.new(:name, :description, :components) do
    def filename
      "lib/pipehat/types/#{name.downcase}.rb"
    end
  end

  Field = Component

  Segment = Struct.new(:name, :description, :fields) do
    def filename
      "lib/pipehat/segment/#{name.downcase}.rb"
    end
  end

  def generate_types
    type = nil
    CSV.new(File.read("standard/datatypes.csv")).each do |row|
      if row[0]
        write_type_definition(type) if type
        type = Type.new(row[0], row[1], [])
      end
      type.components << Component.new(row[2], row[3]) if row[2]
    end
    write_type_definition(type)
  end

  def write_type_definition(type)
    puts "Writing #{type.filename} ..."

    maxlen = type.components.map(&:method_name).map(&:length).max

    File.open(type.filename, "w") do |file|
      file.puts "# frozen_string_literal: true"
      file.puts
      file.puts "# #{type.description}"
      if type.components.any?
        file.puts "Pipehat.define_type :#{type.name} do"
        type.components.each do |comp|
          file.puts "  add_component :#{"#{comp.method_name},".ljust(maxlen + 1)} :#{comp.type}"
        end
        file.puts "end"
      else
        file.puts "Pipehat.define_type :#{type.name}"
      end
    end
  end

  def generate_segments
    segment = nil
    CSV.new(File.read("standard/segments.csv")).each do |row|
      if row[0]
        write_segment_class(segment) if segment
        segment = Segment.new(row[0], row[1], [])
      end
      segment.fields << Field.new(row[2], row[3]) if row[2]
    end
    write_segment_class(segment)
  end

  def write_segment_class(segment)
    puts "Writing #{segment.filename}"

    maxlen = segment.fields.map(&:method_name).map(&:length).max
    parent = %w[BHS FHS MSH].include?(segment.name) ? "Header" : "Base"

    File.open(segment.filename, "w") do |file|
      file.puts <<~RUBY
        # frozen_string_literal: true

        module Pipehat
          module Segment
            # #{segment.description}
            class #{segment.name} < #{parent}
      RUBY
      segment.fields.each do |field|
        options = ""
        if parent == "Header" &&
           (field.name.end_with?("Field Separator") || field.name.end_with?("Encoding Characters"))
          # special case for field sep and encoding chats in header segments
          options = ", setter: false"
        end
        file.puts "      add_field :#{"#{field.method_name},".ljust(maxlen + 1)} :#{field.type}#{options}"
      end
      file.puts <<~RUBY
            end
          end
        end
      RUBY
    end
  end
end

CodeGenerator.new.generate!
