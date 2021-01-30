# frozen_string_literal: true

module Pipehat
  module Segment
    # Practitioner Organization Unit
    class ORG < Base
      add_field :set_id,                                           :SI
      add_field :organization_unit_code,                           :CWE
      add_field :organization_unit_type_code,                      :CWE
      add_field :primary_org_unit_indicator,                       :ID
      add_field :practitioner_org_unit_identifier,                 :CX
      add_field :health_care_provider_type_code,                   :CWE
      add_field :health_care_provider_classification_code,         :CWE
      add_field :health_care_provider_area_of_specialization_code, :CWE
      add_field :effective_date_range,                             :DR
      add_field :employment_status_code,                           :CWE
      add_field :board_approval_indicator,                         :ID
      add_field :primary_care_physician_indicator,                 :ID
      add_field :cost_center_code,                                 :CWE
    end
  end
end
