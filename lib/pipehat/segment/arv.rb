# frozen_string_literal: true

module Pipehat
  module Segment
    # Access Restriction
    class ARV < Base
      add_field :set_id,                                  :SI
      add_field :access_restriction_action_code,          :CNE
      add_field :access_restriction_value,                :CWE
      add_field :access_restriction_reason,               :CWE
      add_field :special_access_restriction_instructions, :ST
      add_field :access_restriction_date_range,           :DR
      add_field :security_classification_tag,             :CWE
      add_field :security_handling_instructions,          :CWE
      add_field :access_restriction_message_location,     :ERL
      add_field :access_restriction_instance_identifier,  :EI
    end
  end
end
