# frozen_string_literal: true

module Pipehat
  module Segment
    # Diagnosis
    class DG1 < Base
      add_field :set_id,                    :SI
      add_field :diagnosis_coding_method,   :ID
      add_field :diagnosis_code,            :CE
      add_field :diagnosis_description,     :ST
      add_field :diagnosis_date_time,       :TS
      add_field :diagnosis_type,            :IS
      add_field :major_diagnostic_category, :CE
      add_field :diagnostic_related_group,  :CE
      add_field :drg_approval_indicator,    :ID
      add_field :drg_grouper_review_code,   :IS
      add_field :outlier_type,              :CE
      add_field :outlier_days,              :NM
      add_field :outlier_cost,              :CP
      add_field :grouper_version_and_type,  :ST
      add_field :diagnosis_priority,        :ID
      add_field :diagnosing_clinician,      :IS
      add_field :diagnosis_classification,  :IS
      add_field :confidential_indicator,    :ID
      add_field :attestation_date_time,     :EI
      add_field :diagnosis_identifier,      :EI
      add_field :diagnosis_action_code,     :ID
    end
  end
end
