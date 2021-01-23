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

  Type = Struct.new(:name, :description, :components)

  def generate_types
    type = nil
    CSV.new(File.read("standard/datatypes.csv")).each do |row|
      if row[0]
        write_type_definition(type) if type
        type = Type.new(row[0], row[1], [])
        type.components << Component.new(row[2], row[3]) if row[2]
      elsif row[2]
        type.components << Component.new(row[2], row[3])
      end
    end
    write_type_definition(type)
  end

  def write_type_definition(type)
    filename = "lib/pipehat/types/#{type.name.downcase}.rb"
    puts "Writing #{filename} ..."

    maxlen = type.components.map(&:method_name).map(&:length).max

    File.open(filename, "w") do |file|
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
end

CodeGenerator.new.generate!
