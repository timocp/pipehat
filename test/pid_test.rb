require "test_helper"

class PidTest < Minitest::Test
  def test_create_empty
    assert_equal "PID", Pipehat::Segment::PID.new.to_hl7
  end

  def test_field_index
    pid = Pipehat::Segment::PID.new
    pid.field(1).set("1")
    assert_equal "PID|1", pid.to_hl7
  end

  def test_field_name
    pid = Pipehat::Segment::PID.new
    assert_instance_of Pipehat::Field::SI, pid.set_id
    assert_equal "", pid.set_id.to_s
    pid.set_id = "1"
    assert_equal "1", pid.set_id.to_s
    assert_equal "PID|1", pid.to_hl7
  end

  def test_repeats
    pid = Pipehat::Segment::PID.new("PID||A~B")
    assert_instance_of Pipehat::Field::CX, pid.patient_id
    assert_instance_of Pipehat::Repeat::CX, pid.patient_id.repeat(1)
    assert_equal "A", pid.patient_id.repeat(1).to_s
    assert_equal "B", pid.patient_id.repeat(2).to_s
    assert_equal "A", pid.patient_id[1].to_s
    assert_equal "B", pid.patient_id[2].to_s
    pid.patient_id[2] = "Z"
    assert_equal "PID||A~Z", pid.to_hl7
  end

  def test_components
    pid = Pipehat::Segment::PID.new("PID|||1234567^4^M11")
    assert_instance_of Pipehat::Field::CX, pid.patient_identifier_list
    assert_instance_of Pipehat::Repeat::CX, pid.patient_identifier_list[1]

    # first repeat is implicit
    assert_instance_of Pipehat::Component::ST, pid.patient_identifier_list.id_number
    assert_equal "1234567", pid.patient_identifier_list.id_number.to_s
    # or can be specified
    assert_instance_of Pipehat::Component::ST, pid.patient_identifier_list[1].id_number
    assert_equal "1234567", pid.patient_identifier_list[1].id_number.to_s

    pid.patient_identifier_list.id_number = "NEWID"
    assert_equal "PID|||NEWID^4^M11", pid.to_hl7

    # check all CX fields can be accessed
    pidlist = pid.patient_identifier_list
    assert_equal "NEWID", pidlist.id_number.to_s
    assert_equal "4", pidlist.identifier_check_digit.to_s
    assert_equal "M11", pidlist.check_digit_scheme.to_s
    assert_equal "", pidlist.assigning_authority.to_s
    assert_equal "", pidlist.identifier_type_code.to_s
    assert_equal "", pidlist.assigning_facility.to_s
    assert_equal "", pidlist.effective_date.to_s
    assert_equal "", pidlist.expiration_date.to_s
    assert_equal "", pidlist.assigning_jurisdiction.to_s
    assert_equal "", pidlist.assigning_agency_or_department.to_s
    assert_equal "", pidlist.security_check.to_s
    assert_equal "", pidlist.security_check_scheme.to_s
    pidlist.security_check_scheme = "ZZ"
    assert_equal "PID|||NEWID^4^M11^^^^^^^^^ZZ", pid.to_hl7

    assert_equal "", pidlist.assigning_jurisdiction.value_set_version_id.to_s
  end

  def test_subcomponents
    pid = Pipehat::Segment::PID.new("PID|||1234567^^^NS&UI&UITYPE")
    aa = pid.patient_identifier_list.assigning_authority
    assert_instance_of Pipehat::Component::HD, aa
    assert_equal "NS", aa.to_s

    assert_instance_of Pipehat::Subcomponent::IS, aa.namespace_id
    assert_equal "NS", aa.namespace_id.to_s
    assert_instance_of Pipehat::Subcomponent::ST, aa.universal_id
    assert_equal "UI", aa.universal_id.to_s
    assert_instance_of Pipehat::Subcomponent::ID, aa.universal_id_type
    assert_equal "UITYPE", aa.universal_id_type.to_s

    aa.universal_id = "XX"
    assert_equal "PID|||1234567^^^NS&XX&UITYPE", pid.to_hl7
    pid.patient_identifier_list.assigning_authority = "AA"
    assert_equal "PID|||1234567^^^AA", pid.to_hl7
  end
end
