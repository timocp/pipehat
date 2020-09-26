# frozen_string_literal: true

module Pipehat
  module Segment
    # Patient Visit
    class PV1 < Base
      add_field :set_id,                        :SI
      add_field :patient_class,                 :CWE
      add_field :assigned_patient_location,     :PL
      add_field :admission_type,                :CWE
      add_field :preadmit_number,               :CX
      add_field :prior_patient_location,        :PL
      add_field :attending_doctor,              :XCN
      add_field :referring_doctor,              :XCN
      add_field :consulting_doctor,             :XCN
      add_field :hospital_service,              :CWE
      add_field :temporary_location,            :PL
      add_field :preadmit_test_indicator,       :CWE
      add_field :readmission_indicator,         :CWE
      add_field :admit_source,                  :CWE
      add_field :ambulatory_status,             :CWE
      add_field :vip_indicator,                 :CWE
      add_field :admitting_doctor,              :XCN
      add_field :patient_type,                  :CWE
      add_field :visit_number,                  :CX
      add_field :financial_class,               :FC
      add_field :charge_price_indicator,        :CWE
      add_field :courtesy_code,                 :CWE
      add_field :credit_rating,                 :CWE
      add_field :contract_code,                 :CWE
      add_field :contract_effective_date,       :DT
      add_field :contract_amount,               :NM
      add_field :contract_period,               :NM
      add_field :interest_code,                 :CWE
      add_field :transfer_to_bad_debt_code,     :CWE
      add_field :transfer_to_bad_debt_date,     :DT
      add_field :bad_debt_agency_code,          :CWE
      add_field :bad_debt_transfer_amount,      :NM
      add_field :bad_debt_recovery_amount,      :NM
      add_field :delete_account_indicator,      :CWE
      add_field :delete_account_date,           :DT
      add_field :discharge_disposition,         :CWE
      add_field :discharged_to_location,        :DLD
      add_field :diet_type,                     :CWE
      add_field :servicing_facility,            :CWE
      add_field :bed_status,                    :ST
      add_field :account_status,                :CWE
      add_field :pending_location,              :PL
      add_field :prior_temporary_location,      :PL
      add_field :admit_date_time,               :DTM
      add_field :discharge_date_time,           :DTM
      add_field :current_patient_balance,       :NM
      add_field :total_charges,                 :NM
      add_field :total_adjustments,             :NM
      add_field :total_payments,                :NM
      add_field :alternate_visit_id,            :CX
      add_field :visit_indicator,               :CWE
      add_field :other_healthcare_provider,     :ST
      add_field :service_episode_description,   :ST
      add_field :service_episode_identifier,    :CX
    end
  end
end
