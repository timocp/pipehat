# frozen_string_literal: true

module Pipehat
  module Segment
    # Patient Additional Demographic
    class PD1 < Base
      add_field :living_dependency,                           :CWE
      add_field :living_arrangement,                          :CWE
      add_field :patient_primary_facility,                    :XON
      add_field :patient_primary_care_provider_name_id_no,    :XCN
      add_field :student_indicator,                           :CWE
      add_field :handicap,                                    :CWE
      add_field :living_will_code,                            :CWE
      add_field :organ_donor_code,                            :CWE
      add_field :separate_bill,                               :ID
      add_field :duplicate_patient,                           :CX
      add_field :publicity_code,                              :CWE
      add_field :protection_indicator,                        :ID
      add_field :protection_indicator_effective_date,         :DT
      add_field :place_of_worship,                            :XON
      add_field :advance_directive_code,                      :CWE
      add_field :immunization_registry_status,                :CWE
      add_field :immunization_registry_status_effective_date, :DT
      add_field :publicity_code_effective_date,               :DT
      add_field :military_branch,                             :CWE
      add_field :military_rank_grade,                         :CWE
      add_field :military_status,                             :CWE
      add_field :advance_directive_last_verified_date,        :DT
      add_field :retirement_date,                             :DT
    end
  end
end
