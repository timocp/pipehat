# frozen_string_literal: true

module Pipehat
  module Segment
    # Clinical Relationship Segment
    class REL < Base
      add_field :set_id,                                  :SI
      add_field :relationship_type,                       :CWE
      add_field :this_relationship_instance_identifier,   :EI
      add_field :source_information_instance_identifier,  :EI
      add_field :target_information_instance_identifier,  :EI
      add_field :asserting_entity_instance_id,            :EI
      add_field :asserting_person,                        :XCN
      add_field :asserting_organization,                  :XON
      add_field :assertor_address,                        :XAD
      add_field :assertor_contact,                        :XTN
      add_field :assertion_date_range,                    :DR
      add_field :negation_indicator,                      :ID
      add_field :certainty_of_relationship,               :CWE
      add_field :priority_no,                             :NM
      add_field :priority_sequence_no,                    :NM
      add_field :separability_indicator,                  :ID
      add_field :source_information_instance_object_type, :ID
      add_field :target_information_instance_object_type, :ID
    end
  end
end
