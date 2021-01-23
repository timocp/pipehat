# frozen_string_literal: true

module Pipehat
  module Segment
    # Error
    class ERR < Base
      add_field :error_code_and_location,     :ELD
      add_field :error_location,              :ERL
      add_field :hl7_error_code,              :CWE
      add_field :severity,                    :ID
      add_field :application_error_code,      :CWE
      add_field :application_error_parameter, :ST
      add_field :diagnostic_information,      :TX
      add_field :user_message,                :TX
      add_field :inform_person_indicator,     :CWE
      add_field :override_type,               :CWE
      add_field :override_reason_code,        :CWE
      add_field :help_desk_contact_point,     :XTN
    end
  end
end
