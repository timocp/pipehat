# frozen_string_literal: true

require "test_helper"

class AssignmentTest < Minitest::Test
  # Normal field assignment is a string
  def test_assign_string
    seg = Pipehat::Segment::Base.new
    seg.field(1).set("A")
    seg.field(2).repeat(2).set("B")
    seg.field(3).repeat(1).component(2).set("C")
    seg.field(4).repeat(1).component(1).subcomponent(2).set("D")
    assert_equal "Base|A|~B|^C|&D", seg.to_hl7
  end

  # Fields-components may also be an array of strings.
  def test_assign_array
    seg = Pipehat::Segment::Base.new
    seg.field(1).set(%w[A B])
    seg.field(2).repeat(1).set(%w[B C])
    seg.field(3).repeat(1).component(1).set(%w[C D])
    assert_equal "Base|A~B|B^C|C&D", seg.to_hl7

    # subcomponent may NOT be an array
    assert_raises(TypeError) { seg.field(4).component(1).subcomponent(1).set(%w[D E]) }

    # named fields / components / subcomponents
    pid = Pipehat::Segment::PID.new
    pid.patient_identifier_list = ["ID1", "ID2"] # note this sets 2 repeats
    pid.patient_identifier_list.assigning_authority = ["AA", "", "L"]
    pid.patient_name.first = ["Family", "Given", "", "", "Mx"]
    pid.patient_name[2] = ["Second Family", "Second Given", "", "", "Mx"]
    assert_equal "PID|||ID1^^^AA&&L~ID2||Family^Given^^^Mx~Second Family^Second Given^^^Mx", pid.to_hl7
  end
end
