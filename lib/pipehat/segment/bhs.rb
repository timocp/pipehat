# frozen_string_literal: true

module Pipehat
  module Segment
    # Batch Header
    class BHS < Header
      add_field :batch_field_separator,                   :ST, setter: false
      add_field :batch_encoding_characters,               :ST, setter: false
      add_field :batch_sending_application,               :HD
      add_field :batch_sending_facility,                  :HD
      add_field :batch_receiving_application,             :HD
      add_field :batch_receiving_facility,                :HD
      add_field :batch_creation_date_time,                :DTM
      add_field :batch_security,                          :ST
      add_field :batch_name_id_type,                      :ST
      add_field :batch_comment,                           :ST
      add_field :batch_control_id,                        :ST
      add_field :reference_batch_control_id,              :ST
      add_field :batch_sending_network_address,           :HD
      add_field :batch_receiving_network_address,         :HD
      add_field :security_classification_tag,             :CWE
      add_field :security_handling_instructions,          :CWE
      add_field :special_access_restriction_instructions, :ST
    end
  end
end
