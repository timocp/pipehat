# frozen_string_literal: true

require "test_helper"

class TypesTest < Minitest::Test
  # dynamically test each named field / component / subcomponent
  # this ensures no type definitions are missing
  def test_types
    base = Pipehat::Segment::Base
    ObjectSpace.each_object(base.singleton_class).reject { |klass| klass == base }.each do |klass|
      seg = klass.new
      klass.field_names.each do |fieldname|
        field = seg.send(fieldname)

        # skip special message header fields (tested in msh_test)
        next if klass == Pipehat::Segment::MSH && %i[field_separator encoding_characters].include?(fieldname)

        assert_equal "", field.to_s
        field.class.instance_methods(false).reject { |method| method.to_s.end_with?("=") }.each do |compname|
          comp = field.send(compname)
          assert_equal "", comp.to_s
          comp.class.instance_methods(false).reject { |method| method.to_s.end_with?("=") }.each do |subcompname|
            subcomp = comp.send(subcompname)
            assert_equal "", subcomp.to_s
          end
        end
      end
    end
  end
end
