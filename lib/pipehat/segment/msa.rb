# frozen_string_literal: true

module Pipehat
  module Segment
    # Message Acknowledgment
    class MSA < Base
      field :acknowledgment_code,         :ID
      field :message_control_id,          :ST
      field :text_message,                :ST
      field :expected_sequence_number,    :NM
      field :delayed_acknowledgment_type, :ST
      field :error_condition,             :ST
      field :message_waiting_number,      :NM
      field :message_waiting_priority,    :ID
    end
  end
end
