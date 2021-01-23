# frozen_string_literal: true

module Pipehat
  module Segment
    # Patient Visit - Additional Information
    class PV2 < Base
      add_field :prior_pending_location,                   :PL
      add_field :accommodation_code,                       :CWE
      add_field :admit_reason,                             :CWE
      add_field :transfer_reason,                          :CWE
      add_field :patient_valuables,                        :ST
      add_field :patient_valuables_location,               :ST
      add_field :visit_user_code,                          :CWE
      add_field :expected_admit_date_time,                 :DTM
      add_field :expected_discharge_date_time,             :DTM
      add_field :estimated_length_of_inpatient_stay,       :NM
      add_field :actual_length_of_inpatient_stay,          :NM
      add_field :visit_description,                        :ST
      add_field :referral_source_code,                     :XCN
      add_field :previous_service_date,                    :DT
      add_field :employment_illness_related_indicator,     :ID
      add_field :purge_status_code,                        :CWE
      add_field :purge_status_date,                        :DT
      add_field :special_program_code,                     :CWE
      add_field :retention_indicator,                      :ID
      add_field :expected_number_of_insurance_plans,       :NM
      add_field :visit_publicity_code,                     :CWE
      add_field :visit_protection_indicator,               :ID
      add_field :clinic_organization_name,                 :XON
      add_field :patient_status_code,                      :CWE
      add_field :visit_priority_code,                      :CWE
      add_field :previous_treatment_date,                  :DT
      add_field :expected_discharge_disposition,           :CWE
      add_field :signature_on_file_date,                   :DT
      add_field :first_similar_illness_date,               :DT
      add_field :patient_charge_adjustment_code,           :CWE
      add_field :recurring_service_code,                   :CWE
      add_field :billing_media_code,                       :ID
      add_field :expected_surgery_date_and_time,           :DTM
      add_field :military_partnership_code,                :ID
      add_field :military_non_availability_code,           :ID
      add_field :newborn_baby_indicator,                   :ID
      add_field :baby_detained_indicator,                  :ID
      add_field :mode_of_arrival_code,                     :CWE
      add_field :recreational_drug_use_code,               :CWE
      add_field :admission_level_of_care_code,             :CWE
      add_field :precaution_code,                          :CWE
      add_field :patient_condition_code,                   :CWE
      add_field :living_will_code,                         :CWE
      add_field :organ_donor_code,                         :CWE
      add_field :advance_directive_code,                   :CWE
      add_field :patient_status_effective_date,            :DT
      add_field :expected_loa_return_date_time,            :DTM
      add_field :expected_pre_admission_testing_date_time, :DTM
      add_field :notify_clergy_code,                       :CWE
      add_field :advance_directive_last_verified_date,     :DT
    end
  end
end
