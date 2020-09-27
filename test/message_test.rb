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
    assert_equal "", Pipehat::Message.new.to_hl7
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
end
