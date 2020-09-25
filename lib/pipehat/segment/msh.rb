# frozen_string_literal: true

module Pipehat
  module Segment
    # Message Header
    class MSH < Base
      add_field :field_separator,                         :ST, setter: false
      add_field :encoding_characters,                     :ST, setter: false
      add_field :sending_application,                     :HD
      add_field :sending_facility,                        :HD
      add_field :receiving_application,                   :HD
      add_field :receiving_facility,                      :HD
      add_field :date_time_of_message,                    :DTM
      add_field :security,                                :ST
      add_field :message_type,                            :MSG
      add_field :message_control_id,                      :ST
      add_field :processing_id,                           :PT
      add_field :version_id,                              :VID
      add_field :sequence_number,                         :NM
      add_field :continuation_pointer,                    :ST
      add_field :accept_acknowledgment_type,              :ID
      add_field :application_acknowledgment_type,         :ID
      add_field :country_code,                            :ID
      add_field :character_set,                           :ID
      add_field :principal_language_of_message,           :CWE
      add_field :alternate_character_set_handling_scheme, :ID
      add_field :message_profile_identifier,              :EI
      add_field :sending_responsible_organization,        :XON
      add_field :receiving_responsible_organization,      :XON
      add_field :sending_network_address,                 :HD
      add_field :receiving_network_address,               :HD

      def initialize(string = nil, parser: Pipehat::DEFAULT_PARSER)
        super
        @data.insert(1, [[[parser.field_sep]]])
        @data[2] = [[[parser.msh2]]]
      end

      def to_hl7
        # Same as Base, but just drop the field separator since it will be
        # added by the join
        @data.each_with_index.reject { |_field, i| i == 1 }.map do |field, _i|
          (field || []).map do |repeat|
            (repeat || []).map do |component|
              (component || []).join(parser.subcomponent_sep)
            end.join(parser.component_sep)
          end.join(parser.repetition_sep)
        end.join(parser.field_sep)
      end
    end
  end
end
