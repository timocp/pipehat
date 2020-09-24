# frozen_string_literal: true

module Pipehat
  module Segment
    # Message Header
    class MSH < Base
      field :field_separator,                         :ST, setter: false
      field :encoding_characters,                     :ST, setter: false
      field :sending_application,                     :HD
      field :sending_facility,                        :HD
      field :receiving_application,                   :HD
      field :receiving_facility,                      :HD
      field :date_time_of_message,                    :DTM
      field :security,                                :ST
      field :message_type,                            :MSG
      field :message_control_id,                      :ST
      field :processing_id,                           :PT
      field :version_id,                              :VID
      field :sequence_number,                         :NM
      field :continuation_pointer,                    :ST
      field :accept_acknowledgment_type,              :ID
      field :application_acknowledgment_type,         :ID
      field :country_code,                            :ID
      field :character_set,                           :ID
      field :principal_language_of_message,           :CWE
      field :alternate_character_set_handling_scheme, :ID
      field :message_profile_identifier,              :EI
      field :sending_responsible_organization,        :XON
      field :receiving_responsible_organization,      :XON
      field :sending_network_address,                 :HD
      field :receiving_network_address,               :HD

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
