# frozen_string_literal: true

module Pipehat
  module Segment
    # Error
    class ERR < Base
      field :error_code_and_location,     :ST
      field :error_location,              :ERL
      field :hl7_error_code,              :CWE
      field :severity,                    :ID
      field :application_error_code,      :CWE
      field :application_error_parameter, :ST
      field :diagnostic_information,      :TX
      field :user_message,                :TX
      field :inform_person_indicator,     :CWE
      field :override_type,               :CWE
      field :override_reason_code,        :CWE
      field :help_desk_contact_point,     :XTN
    end
  end
end
