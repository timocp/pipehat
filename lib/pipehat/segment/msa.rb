# frozen_string_literal: true

module Pipehat
  module Segment
    # Message Acknowledgment
    class MSA < Base
      add_field :acknowledgment_code,         :ID
      add_field :message_control_id,          :ST
      add_field :text_message,                :ST
      add_field :expected_sequence_number,    :NM
      add_field :delayed_acknowledgment_type, :ST
      add_field :error_condition,             :ST
      add_field :message_waiting_number,      :NM
      add_field :message_waiting_priority,    :ID
    end
  end
end
