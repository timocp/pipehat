# frozen_string_literal: true

module Pipehat
  module Segment
    # Abstract
    class ABS < Base
      add_field :discharge_care_provider,       :XCN
      add_field :transfer_medical_service_code, :CWE
      add_field :severity_of_illness_code,      :CWE
      add_field :date_time_of_attestation,      :DTM
      add_field :attested_by,                   :XCN
      add_field :triage_code,                   :CWE
      add_field :abstract_completion_date_time, :DTM
      add_field :abstracted_by,                 :XCN
      add_field :case_category_code,            :CWE
      add_field :caesarian_section_indicator,   :ID
      add_field :gestation_category_code,       :CWE
      add_field :gestation_period_weeks,        :NM
      add_field :newborn_code,                  :CWE
      add_field :stillborn_indicator,           :ID
    end
  end
end
