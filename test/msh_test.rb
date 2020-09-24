# frozen_string_literal: true

require "test_helper"

class MshTest < Minitest::Test
  def test_creation
    msh = Pipehat::Segment::MSH.new

    # msh segment is special.  MSH-2 and MSH-3 are populated automatically
    # from the parser at time of initialization.  there is no setter.
    assert_equal "|", msh.field_separator.to_s
    assert_equal "^~\\&", msh.encoding_characters.to_s

    # writing the MSH segment includes encoding characters properly
    msh.sending_application = "APP"
    assert_equal "MSH|^~\\&|APP", msh.to_hl7
  end

  def test_parse
    input = "MSH|^~\\&|APP"
    msh = Pipehat::Segment::MSH.new(input)
    assert_equal "|", msh.field_separator.to_s
    assert_equal "^~\\&", msh.encoding_characters.to_s
    assert_equal "APP", msh.sending_application.to_s
    assert_equal "", msh.sending_facility.to_s
    assert_equal input, msh.to_hl7
  end
end
