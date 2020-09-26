# frozen_string_literal: true

require "test_helper"

class ParserTest < Minitest::Test
  def test_to_hl7
    pid = Pipehat::Segment::PID.new("PID||1234|1234^^^&example.com&DNS~ABCD^^^&test.com&DNS")
    assert_equal "PID||1234|1234^^^&example.com&DNS~ABCD^^^&test.com&DNS", pid.to_hl7
    assert_equal "", pid.set_id.to_hl7
    assert_equal "1234", pid.patient_id.to_hl7
    assert_equal "1234^^^&example.com&DNS~ABCD^^^&test.com&DNS", pid.patient_identifier_list.to_hl7
    assert_equal "1234^^^&example.com&DNS", pid.patient_identifier_list.first.to_hl7
    assert_equal "1234", pid.patient_identifier_list.id_number.to_hl7
    assert_equal "&example.com&DNS", pid.patient_identifier_list.assigning_authority.to_hl7
    assert_equal "", pid.patient_identifier_list.assigning_authority.namespace_id.to_hl7
    assert_equal "example.com", pid.patient_identifier_list.assigning_authority.universal_id.to_hl7
    assert_equal "DNS", pid.patient_identifier_list.assigning_authority.universal_id_type.to_hl7
  end
end
