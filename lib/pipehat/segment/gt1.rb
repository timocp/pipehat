# frozen_string_literal: true

module Pipehat
  module Segment
    # Guarantor
    class GT1 < Base
      add_field :set_id,                                :SI
      add_field :guarantor_number,                      :CX
      add_field :guarantor_name,                        :XPN
      add_field :guarantor_spouse_name,                 :XPN
      add_field :guarantor_address,                     :XAD
      add_field :guarantor_ph_num_home,                 :XTN
      add_field :guarantor_ph_num_business,             :XTN
      add_field :guarantor_date_time_of_birth,          :DTM
      add_field :guarantor_administrative_sex,          :CWE
      add_field :guarantor_type,                        :CWE
      add_field :guarantor_relationship,                :CWE
      add_field :guarantor_ssn,                         :ST
      add_field :guarantor_date_begin,                  :DT
      add_field :guarantor_date_end,                    :DT
      add_field :guarantor_priority,                    :NM
      add_field :guarantor_employer_name,               :XPN
      add_field :guarantor_employer_address,            :XAD
      add_field :guarantor_employer_phone_number,       :XTN
      add_field :guarantor_employee_id_number,          :CX
      add_field :guarantor_employment_status,           :CWE
      add_field :guarantor_organization_name,           :XON
      add_field :guarantor_billing_hold_flag,           :ID
      add_field :guarantor_credit_rating_code,          :CWE
      add_field :guarantor_death_date_and_time,         :DTM
      add_field :guarantor_death_flag,                  :ID
      add_field :guarantor_charge_adjustment_code,      :CWE
      add_field :guarantor_household_annual_income,     :CP
      add_field :guarantor_household_size,              :NM
      add_field :guarantor_employer_id_number,          :CX
      add_field :guarantor_marital_status_code,         :CWE
      add_field :guarantor_hire_effective_date,         :DT
      add_field :employment_stop_date,                  :DT
      add_field :living_dependency,                     :CWE
      add_field :ambulatory_status,                     :CWE
      add_field :citizenship,                           :CWE
      add_field :primary_language,                      :CWE
      add_field :living_arrangement,                    :CWE
      add_field :publicity_code,                        :CWE
      add_field :protection_indicator,                  :ID
      add_field :student_indicator,                     :CWE
      add_field :religion,                              :CWE
      add_field :mothers_maiden_name,                   :XPN
      add_field :nationality,                           :CWE
      add_field :ethnic_group,                          :CWE
      add_field :contact_persons_name,                  :XPN
      add_field :contact_persons_telephone_number,      :XTN
      add_field :contact_reason,                        :CWE
      add_field :contact_relationship,                  :CWE
      add_field :job_title,                             :ST
      add_field :job_code_class,                        :JCC
      add_field :guarantor_employers_organization_name, :XON
      add_field :handicap,                              :CWE
      add_field :job_status,                            :CWE
      add_field :guarantor_financial_class,             :FC
      add_field :guarantor_race,                        :CWE
      add_field :guarantor_birth_place,                 :ST
      add_field :vip_indicator,                         :CWE
    end
  end
end
