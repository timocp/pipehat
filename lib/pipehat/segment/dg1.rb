# frozen_string_literal: true

module Pipehat
  module Segment
    # Diagnosis
    class DG1 < Base
      add_field :set_id,                             :SI
      add_field :diagnosis_coding_method,            :ID
      add_field :diagnosis_code,                     :CWE
      add_field :diagnosis_description,              :ST
      add_field :diagnosis_date_time,                :DTM
      add_field :diagnosis_type,                     :CWE
      add_field :major_diagnostic_category,          :CE
      add_field :diagnostic_related_group,           :CE
      add_field :drg_approval_indicator,             :ID
      add_field :drg_grouper_review_code,            :IS
      add_field :outlier_type,                       :CE
      add_field :outlier_days,                       :NM
      add_field :outlier_cost,                       :CP
      add_field :grouper_version_and_type,           :ST
      add_field :diagnosis_priority,                 :NM
      add_field :diagnosing_clinician,               :XCN
      add_field :diagnosis_classification,           :CWE
      add_field :confidential_indicator,             :ID
      add_field :attestation_date_time,              :DTM
      add_field :diagnosis_identifier,               :EI
      add_field :diagnosis_action_code,              :ID
      add_field :parent_diagnosis,                   :EI
      add_field :drg_ccl_value_code,                 :CWE
      add_field :drg_grouping_usage,                 :ID
      add_field :drg_diagnosis_determination_status, :CWE
      add_field :present_on_admission_poa_indicator, :CWE
    end
  end
end
