# frozen_string_literal: true

require "test_helper"

class MessageTest < Minitest::Test
  # This is the sample HL7 v2 message from Wikipedia
  # https://en.wikipedia.org/wiki/Health_Level_7
  def example_hl7
    <<~HL7.chomp.tr("\n", "\r")
      MSH|^~\&|MegaReg|XYZHospC|SuperOE|XYZImgCtr|20060529090131-0500||ADT^A01^ADT_A01|01052901|P|2.5
      EVN||200605290901||||200605290900
      PID|||56782445^^^UAReg^PI||KLEINSAMPLE^BARRY^Q^JR||19620910|M||2028-9^^HL70005^RA99113^^XYZ|260 GOODWIN CREST DRIVE^^BIRMINGHAM^AL^35209^^M~NICKELL??S PICKLES^10000 W 100TH AVE^BIRMINGHAM^AL^35200^^O|||||||0105I30001^^^99DEF^AN
      PV1||I|W^389^1^UABH^^^^3||||12345^MORGAN^REX^J^^^MD^0010^UAMC^L||67890^GRAINGER^LUCY^X^^^MD^0010^UAMC^L|MED|||||A0||13579^POTTER^SHERMAN^T^^^MD^0010^UAMC^L|||||||||||||||||||||||||||200605290900
      OBX|1|NM|^Body Height||1.80|m^Meter^ISO+|||||F
      OBX|2|NM|^Body Weight||79|kg^Kilogram^ISO+|||||F
      AL1|1||^ASPIRIN
      DG1|1||786.50^CHEST PAIN, UNSPECIFIED^I9|||A
    HL7
  end

  def example_msg
    Pipehat::Message.new(example_hl7)
  end

  def test_empty
    msg = Pipehat::Message.new
    assert_equal "", msg.to_hl7

    msg << Pipehat::Segment::MSH.new
    assert_equal "MSH|^~\\&", msg.to_hl7
  end

  def test_parse
    msg = example_msg
    assert_instance_of Pipehat::Message, msg
  end

  def test_segments
    msg = example_msg
    assert_instance_of Enumerator, msg.segments
    assert_instance_of Pipehat::Segment::MSH, msg.segments.first
    assert_instance_of Pipehat::Segment::DG1, msg.segments.to_a.last
  end

  def test_append_segment
    msg = Pipehat::Message.new.tap do |m|
      m << Pipehat::Segment::MSH.new.tap do |msh|
        msh.sending_application = "MegaReg"
        msh.sending_facility = "XYZHospC"
        msh.receiving_application = "SuperOE"
        msh.receiving_facility = "XYZImgCtr"
        msh.date_time_of_message = "20060529090131-0500"
        msh.message_type.message_code = "ADT"
        msh.message_type.trigger_event = "A01"
        msh.message_type.message_structure = "ADT_A01"
        msh.message_control_id = "01052901"
        msh.processing_id = "P"
        msh.version_id = "2.5"
      end
      m << Pipehat::Segment::DG1.new.tap do |dg1|
        dg1.set_id = "1"
        dg1.diagnosis_code.identifier = "786.50"
        dg1.diagnosis_code.text = "CHEST PAIN, UNSPECIFIED"
        dg1.diagnosis_code.name_of_coding_system = "I9"
        dg1.diagnosis_type = "A"
      end
    end
    assert_equal "MSH|^~\\&|MegaReg|XYZHospC|SuperOE|XYZImgCtr|20060529090131-0500||ADT^A01^ADT_A01|01052901|P|2.5\r" \
                 "DG1|1||786.50^CHEST PAIN, UNSPECIFIED^I9|||A",
                 msg.to_hl7
  end
end
