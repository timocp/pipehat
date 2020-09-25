# frozen_string_literal: true

require "test_helper"

class TypesTest < Minitest::Test
  def test_component_names
    expected_hd_fields = %i[namespace_id universal_id universal_id_type]
    assert_equal expected_hd_fields, Pipehat::Field::HD.component_names
    assert_equal expected_hd_fields, Pipehat::Repeat::HD.component_names
    assert_equal expected_hd_fields, Pipehat::Component::HD.component_names
    assert_equal expected_hd_fields, Pipehat::Segment::MSH.new.sending_facility.component_names
    assert_equal expected_hd_fields, Pipehat::Segment::MSH.new.sending_facility[1].component_names
    assert_equal expected_hd_fields, Pipehat::Segment::ORC.new.enterers_location.bed.component_names

    assert_equal [], Pipehat::Field::ST.component_names
    assert_equal [], Pipehat::Repeat::ST.component_names
    assert_equal [], Pipehat::Component::ST.component_names
    assert_equal [], Pipehat::Subcomponent::ST.component_names
    assert_equal [], Pipehat::Segment::RF1.new.comment.component_names
    assert_equal [], Pipehat::Segment::RF1.new.comment[1].component_names
    assert_equal [], Pipehat::Segment::MSH.new.sending_facility.universal_id.component_names
    assert_equal [], Pipehat::Segment::PID.new.patient_identifier_list.assigning_authority.universal_id_type.component_names
  end

  # dynamically test each named field / component / subcomponent
  # this ensures no type definitions are missing
  def test_types
    base = Pipehat::Segment::Base
    ObjectSpace.each_object(base.singleton_class).reject { |klass| klass == base }.each do |klass|
      seg = klass.new
      klass.field_names.each do |fieldname|
        field = seg.send(fieldname)

        # skip special message header fields (tested in msh_test)
        next if klass == Pipehat::Segment::MSH && %i[field_separator encoding_characters].include?(fieldname)

        assert_equal "", field.to_s
        field.component_names.each do |compname|
          comp = field.send(compname)
          assert_equal "", comp.to_s
          comp.component_names.each do |subcompname|
            subcomp = comp.send(subcompname)
            assert_equal "", subcomp.to_s
          end
        end
      end
    end
  end
end
