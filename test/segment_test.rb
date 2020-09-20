# frozen_string_literal: true

require "test_helper"
require "irb"

class SegmentTest < Minitest::Test
  TEST1 = "ZZZ|AA|A^B|C&D^E&F|G~H|I^J&K~L"

  def test_creation
    assert_instance_of Pipehat::Segment::Base, segment1
  end

  def test_to_hl7
    assert_instance_of String, segment1.to_hl7
    assert_equal TEST1, segment1.to_hl7
  end

  def test_field_accessor
    field1 = segment1.field(1)
    assert_instance_of Pipehat::Field::Base, field1
    assert_equal "AA", field1.to_s

    field2 = segment1.field(2)
    assert_instance_of Pipehat::Field::Base, field2
    assert_equal "A", field2.to_s

    field3 = segment1.field(3)
    assert_instance_of Pipehat::Field::Base, field3
    assert_equal "C", field3.to_s
  end

  private

  def segment1
    Pipehat::Segment::Base.new(TEST1)
  end
end
