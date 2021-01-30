# frozen_string_literal: true

module Pipehat
  module Segment
    # Risk Management Incident
    class RMI < Base
      add_field :risk_management_incident_code, :CWE
      add_field :date_time_incident,            :DTM
      add_field :incident_type_code,            :CWE
    end
  end
end
