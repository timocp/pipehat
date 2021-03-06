# frozen_string_literal: true

require "test_helper"

class TypesTest < Minitest::Test
  def test_component_names
    assert_raises(FrozenError) { Pipehat::Field::HD.component_names << :bad }
    assert_raises(FrozenError) { Pipehat::Segment::MSH.new.sending_facility.component_names << :bad }

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

  # The "Varies" field type can be cast to another, as it is context sensitive.
  # It's pointers have a "cast" method which converts the pointer to one of the
  # desires type.  It is only the Node which is converted (nothing in the
  # underlying segment is modified).
  # There are no limitations on the type you can cast to.
  #
  # Example: OBX-5 has a type which is provided in OBX-2
  def test_varies
    obx = Pipehat::Segment::OBX.new("OBX|1|TX|FZ^SPECIMEN TYPE^L||Sputum||||||F")
    assert_instance_of Pipehat::Field::Varies, obx.observation_value
    assert_equal "Sputum", obx.observation_value.to_s

    obx = Pipehat::Segment::OBX.new("OBX|2|CWE|123^^L|1.1|^Influenza||||||F")
    assert_instance_of Pipehat::Field::Varies, obx.observation_value
    assert_equal "", obx.observation_value.to_s

    vt = obx.value_type
    assert_instance_of Pipehat::Field::CWE, obx.observation_value.cast(vt)
    assert_equal "", obx.observation_value.cast(vt).to_s
    assert_equal "", obx.observation_value.cast(vt).identifier.to_s
    assert_equal "Influenza", obx.observation_value.cast(vt).text.to_s

    assert_instance_of Pipehat::Repeat::CWE, obx.observation_value.first.cast(vt)
    assert_equal "Influenza", obx.observation_value.first.cast(vt).text.to_s

    # you don't actually have to cast to get the values, you can just use the
    # index based accessors
    assert_equal "", obx.observation_value.component(1).to_s
    assert_equal "Influenza", obx.observation_value.component(2).to_s
  end
end
