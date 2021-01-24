# frozen_string_literal: true

module Pipehat
  module Segment
    # Location Department
    class LDP < Base
      add_field :primary_key_value,     :PL
      add_field :location_department,   :CWE
      add_field :location_service,      :CWE
      add_field :specialty_type,        :CWE
      add_field :valid_patient_classes, :CWE
      add_field :active_inactive_flag,  :ID
      add_field :activation_date,       :DTM
      add_field :inactivation_date,     :DTM
      add_field :inactivated_reason,    :ST
      add_field :visiting_hours,        :VH
      add_field :contact_phone,         :XTN
      add_field :location_cost_center,  :CWE
    end
  end
end
