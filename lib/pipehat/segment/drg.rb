# frozen_string_literal: true

module Pipehat
  module Segment
    # Diagnosis Related Group
    class DRG < Base
      add_field :diagnostic_related_group,     :CNE
      add_field :drg_assigned_date_time,       :DTM
      add_field :drg_approval_indicator,       :ID
      add_field :drg_grouper_review_code,      :CWE
      add_field :outlier_type,                 :CWE
      add_field :outlier_days,                 :NM
      add_field :outlier_cost,                 :CP
      add_field :drg_payor,                    :CWE
      add_field :outlier_reimbursement,        :CP
      add_field :confidential_indicator,       :ID
      add_field :drg_transfer_type,            :CWE
      add_field :name_of_coder,                :XPN
      add_field :grouper_status,               :CWE
      add_field :pccl_value_code,              :CWE
      add_field :effective_weight,             :NM
      add_field :monetary_amount,              :MO
      add_field :status_patient,               :CWE
      add_field :grouper_software_name,        :ST
      add_field :grouper_software_version,     :ST
      add_field :status_financial_calculation, :CWE
      add_field :relative_discount_surcharge,  :MO
      add_field :basic_charge,                 :MO
      add_field :total_charge,                 :MO
      add_field :discount_surcharge,           :MO
      add_field :calculated_days,              :NM
      add_field :status_gender,                :CWE
      add_field :status_age,                   :CWE
      add_field :status_length_of_stay,        :CWE
      add_field :status_same_day_flag,         :CWE
      add_field :status_separation_mode,       :CWE
      add_field :status_weight_at_birth,       :CWE
      add_field :status_respiration_minutes,   :CWE
      add_field :status_admission,             :CWE
    end
  end
end
