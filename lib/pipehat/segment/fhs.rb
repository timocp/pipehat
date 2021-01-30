# frozen_string_literal: true

module Pipehat
  module Segment
    # File Header
    class FHS < Header
      add_field :file_field_separator,                    :ST, setter: false
      add_field :file_encoding_characters,                :ST, setter: false
      add_field :file_sending_application,                :HD
      add_field :file_sending_facility,                   :HD
      add_field :file_receiving_application,              :HD
      add_field :file_receiving_facility,                 :HD
      add_field :file_creation_date_time,                 :DTM
      add_field :file_security,                           :ST
      add_field :file_name_id,                            :ST
      add_field :file_header_comment,                     :ST
      add_field :file_control_id,                         :ST
      add_field :reference_file_control_id,               :ST
      add_field :file_sending_network_address,            :HD
      add_field :file_receiving_network_address,          :HD
      add_field :security_classification_tag,             :CWE
      add_field :security_handling_instructions,          :CWE
      add_field :special_access_restriction_instructions, :ST
    end
  end
end
