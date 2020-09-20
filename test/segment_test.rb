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
    assert_equal "A", field2.to_s

    field3 = segment1.field(3)
    assert_equal "C", field3.to_s
  end

  def test_repeat_accessor
    rep1 = segment1.field(1).repeat(1)
    assert_instance_of Pipehat::Repeat::Base, rep1
    assert_equal "AA", rep1.to_s

    rep2 = segment1.field(4).repeat(1)
    assert_equal "G", rep2.to_s

    rep3 = segment1.field(4).repeat(2)
    assert_equal "H", rep3.to_s
  end

  def test_component_accessor
    comp1 = segment1.field(1).repeat(1).component(1)
    assert_instance_of Pipehat::Component::Base, comp1
    assert_equal "AA", comp1.to_s

    comp2 = segment1.field(4).repeat(1).component(1)
    assert_equal "G", comp2.to_s

    comp3 = segment1.field(4).repeat(2).component(1)
    assert_equal "H", comp3.to_s
  end

  def test_subcomponent_accessor
    sub1 = segment1.field(1).repeat(1).component(1).subcomponent(1)
    assert_instance_of Pipehat::Subcomponent::Base, sub1
    assert_equal "AA", sub1.to_s

    sub2 = segment1.field(5).repeat(1).component(2).subcomponent(1)
    assert_equal "J", sub2.to_s

    sub3 = segment1.field(5).repeat(1).component(2).subcomponent(2)
    assert_equal "K", sub3.to_s
  end

  def test_change_field
    seg = Pipehat::Segment::Base.new("ZZZ|AA|B^C~D^E")
    seg.field(1).set("QQ")
    assert_equal "ZZZ|QQ|B^C~D^E", seg.to_hl7

    seg.field(2).set("RR")
    assert_equal "ZZZ|QQ|RR", seg.to_hl7

    seg.field(4).set("SS")
    assert_equal "ZZZ|QQ|RR||SS", seg.to_hl7
  end

  def test_change_repeat
    seg = Pipehat::Segment::Base.new("ZZZ|AA|B^C~D^E")
    seg.field(1).repeat(1).set("QQ")
    assert_equal "ZZZ|QQ|B^C~D^E", seg.to_hl7

    seg.field(2).repeat(2).set("RR")
    assert_equal "ZZZ|QQ|B^C~RR", seg.to_hl7

    seg.field(4).repeat(2).set("SS")
    assert_equal "ZZZ|QQ|B^C~RR||~SS", seg.to_hl7
  end

  def test_change_component
    seg = Pipehat::Segment::Base.new("ZZZ|AA|B^C~D^E")
    seg.field(1).repeat(1).component(1).set("QQ")
    assert_equal "ZZZ|QQ|B^C~D^E", seg.to_hl7

    seg.field(2).repeat(2).component(1).set("RR")
    assert_equal "ZZZ|QQ|B^C~RR^E", seg.to_hl7

    seg.field(4).repeat(2).component(2).set("SS")
    assert_equal "ZZZ|QQ|B^C~RR^E||~^SS", seg.to_hl7
  end

  def test_change_subcomponent
    seg = Pipehat::Segment::Base.new("ZZZ|AA|B^C~D^E")
    seg.field(1).repeat(1).component(1).subcomponent(1).set("QQ")
    assert_equal "ZZZ|QQ|B^C~D^E", seg.to_hl7

    seg.field(2).repeat(2).component(2).subcomponent(2).set("RR")
    assert_equal "ZZZ|QQ|B^C~D^E&RR", seg.to_hl7

    seg.field(4).repeat(2).component(2).subcomponent(2).set("RR")
    assert_equal "ZZZ|QQ|B^C~D^E&RR||~^&RR", seg.to_hl7
  end

  private

  def segment1
    Pipehat::Segment::Base.new(TEST1)
  end
end
