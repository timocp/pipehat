# frozen_string_literal: true

require "test_helper"
require "irb"

class SegmentTest < Minitest::Test
  TEST1 = "ZZZ|A|A^B|C&D^E&F|G~H|I^J&K~L"

  def test_creation
    assert_instance_of Pipehat::Segment::Base, Pipehat::Segment::Base.new(TEST1)
  end
end
