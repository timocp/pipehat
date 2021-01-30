# frozen_string_literal: true

module Pipehat
  module Segment
    # Insurance Additional Information
    class IN2 < Base
      add_field :insureds_employee_id,                      :CX
      add_field :insureds_social_security_number,           :ST
      add_field :insureds_employers_name_and_id,            :XCN
      add_field :employer_information_data,                 :CWE
      add_field :mail_claim_party,                          :CWE
      add_field :medicare_health_ins_card_number,           :ST
      add_field :medicaid_case_name,                        :XPN
      add_field :medicaid_case_number,                      :ST
      add_field :military_sponsor_name,                     :XPN
      add_field :military_id_number,                        :ST
      add_field :dependent_of_military_recipient,           :CWE
      add_field :military_organization,                     :ST
      add_field :military_station,                          :ST
      add_field :military_service,                          :CWE
      add_field :military_rank_grade,                       :CWE
      add_field :military_status,                           :CWE
      add_field :military_retire_date,                      :DT
      add_field :military_non_avail_cert_on_file,           :ID
      add_field :baby_coverage,                             :ID
      add_field :combine_baby_bill,                         :ID
      add_field :blood_deductible,                          :ST
      add_field :special_coverage_approval_name,            :XPN
      add_field :special_coverage_approval_title,           :ST
      add_field :non_covered_insurance_code,                :CWE
      add_field :payor_id,                                  :CX
      add_field :payor_subscriber_id,                       :CX
      add_field :eligibility_source,                        :CWE
      add_field :room_coverage_type_amount,                 :RMC
      add_field :policy_type_amount,                        :PTA
      add_field :daily_deductible,                          :DDI
      add_field :living_dependency,                         :CWE
      add_field :ambulatory_status,                         :CWE
      add_field :citizenship,                               :CWE
      add_field :primary_language,                          :CWE
      add_field :living_arrangement,                        :CWE
      add_field :publicity_code,                            :CWE
      add_field :protection_indicator,                      :ID
      add_field :student_indicator,                         :CWE
      add_field :religion,                                  :CWE
      add_field :mothers_maiden_name,                       :XPN
      add_field :nationality,                               :CWE
      add_field :ethnic_group,                              :CWE
      add_field :marital_status,                            :CWE
      add_field :insureds_employment_start_date,            :DT
      add_field :employment_stop_date,                      :DT
      add_field :job_title,                                 :ST
      add_field :job_code_class,                            :JCC
      add_field :job_status,                                :CWE
      add_field :employer_contact_person_name,              :XPN
      add_field :employer_contact_person_phone_number,      :XTN
      add_field :employer_contact_reason,                   :CWE
      add_field :insureds_contact_persons_name,             :XPN
      add_field :insureds_contact_person_phone_number,      :XTN
      add_field :insureds_contact_person_reason,            :CWE
      add_field :relationship_to_the_patient_start_date,    :DT
      add_field :relationship_to_the_patient_stop_date,     :DT
      add_field :insurance_co_contact_reason,               :CWE
      add_field :insurance_co_contact_phone_number,         :XTN
      add_field :policy_scope,                              :CWE
      add_field :policy_source,                             :CWE
      add_field :patient_member_number,                     :CX
      add_field :guarantors_relationship_to_insured,        :CWE
      add_field :insureds_phone_number_home,                :XTN
      add_field :insureds_employer_phone_number,            :XTN
      add_field :military_handicapped_program,              :CWE
      add_field :suspend_flag,                              :ID
      add_field :copay_limit_flag,                          :ID
      add_field :stoploss_limit_flag,                       :ID
      add_field :insured_organization_name_and_id,          :XON
      add_field :insured_employer_organization_name_and_id, :XON
      add_field :race,                                      :CWE
      add_field :patients_relationship_to_insured,          :CWE
      add_field :co_pay_amount,                             :CP
    end
  end
end
