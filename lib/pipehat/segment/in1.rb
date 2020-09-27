# frozen_string_literal: true

module Pipehat
  module Segment
    # Insurance
    class IN1 < Base
      add_field :set_id,                            :SI
      add_field :health_plan_id,                    :CWE
      add_field :insurance_company_id,              :CX
      add_field :insurance_company_name,            :XON
      add_field :insurance_company_address,         :XAD
      add_field :insurance_co_contact_person,       :XPN
      add_field :insurance_co_phone_number,         :XTN
      add_field :group_number,                      :ST
      add_field :group_name,                        :XON
      add_field :insureds_group_emp_id,             :CX
      add_field :insureds_group_emp_name,           :XON
      add_field :plan_effective_date,               :DT
      add_field :plan_expiration_date,              :DT
      add_field :authorization_information,         :AUI
      add_field :plan_type,                         :CWE
      add_field :name_of_insured,                   :XPN
      add_field :insureds_relationship_to_patient,  :CWE
      add_field :insureds_date_of_birth,            :DTM
      add_field :insureds_address,                  :XAD
      add_field :assignment_of_benefits,            :CWE
      add_field :coordination_of_benefits,          :CWE
      add_field :coord_of_ben_priority,             :ST
      add_field :notice_of_admission_flag,          :ID
      add_field :notice_of_admission_date,          :DT
      add_field :report_of_eligibility_flag,        :ID
      add_field :report_of_eligibility_date,        :DT
      add_field :release_information_code,          :CWE
      add_field :pre_admit_cert,                    :ST
      add_field :verification_date_time,            :DTM
      add_field :verification_by,                   :XCN
      add_field :type_of_agreement_code,            :CWE
      add_field :billing_status,                    :CWE
      add_field :lifetime_reserve_days,             :NM
      add_field :delay_before_lr_day,               :NM
      add_field :company_plan_code,                 :CWE
      add_field :policy_number,                     :ST
      add_field :policy_deductible,                 :CP
      add_field :policy_limit_amount,               :ST
      add_field :policy_limit_days,                 :NM
      add_field :room_rate_semi_private,            :ST
      add_field :room_rate_private,                 :ST
      add_field :insureds_employment_status,        :CWE
      add_field :insureds_administrative_sex,       :CWE
      add_field :insureds_employers_address,        :XAD
      add_field :verification_status,               :ST
      add_field :prior_insurance_plan_id,           :CWE
      add_field :coverage_type,                     :CWE
      add_field :handicap,                          :CWE
      add_field :insureds_id_number,                :CX
      add_field :signature_code,                    :CWE
      add_field :signature_code_date,               :DT
      add_field :insureds_birth_place,              :ST
      add_field :vip_indicator,                     :CWE
      add_field :external_health_plan_identifiers,  :CX
      add_field :insurance_action_code,             :ID
    end
  end
end
