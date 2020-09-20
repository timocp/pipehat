# frozen_string_literal: true

require "test_helper"
require "irb"

class SegmentTest < Minitest::Test
  TEST1 = "ZZZ|A|A^B|C&D^E&F|G~H|I^J&K~L"

  def test_creation
    assert_instance_of Pipehat::Segment::Base, Pipehat::Segment::Base.new(TEST1)
  end

  def test_to_hl7
    seg = Pipehat::Segment::Base.new(TEST1)
    assert_instance_of String, seg.to_hl7
    assert_equal TEST1, seg.to_hl7
  end
end
