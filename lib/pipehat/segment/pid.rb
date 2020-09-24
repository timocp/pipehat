# frozen_string_literal: true

module Pipehat
  module Segment
    # Patient Identification
    class PID < Base
      field :set_id,                                :SI
      field :patient_id,                            :ST
      field :patient_identifier_list,               :CX
      field :alternate_patient_id,                  :ST
      field :patient_name,                          :XPN
      field :mother_s_maiden_name,                  :XPN
      field :date_time_of_birth,                    :DTM
      field :administrative_sex,                    :CWE
      field :patient_alias,                         :ST
      field :race,                                  :CWE
      field :patient_address,                       :XAD
      field :county_code,                           :ST
      field :phone_number_home,                     :XTN
      field :phone_number_business,                 :XTN
      field :primary_language,                      :CWE
      field :marital_status,                        :CWE
      field :religion,                              :CWE
      field :patient_account_number,                :CX
      field :ssn_number,                            :ST
      field :drivers_license_number,                :ST
      field :mothers_identifier,                    :CX
      field :ethnic_group,                          :CWE
      field :birth_place,                           :ST
      field :multiple_birth_indicator,              :ID
      field :birth_order,                           :NM
      field :citizenship,                           :CWE
      field :veterans_military_status,              :CWE
      field :nationality,                           :ST
      field :patient_death_date_and_time,           :DTM
      field :patient_death_indicator,               :ID
      field :identity_unknown_indicator,            :ID
      field :identity_reliability_code,             :CWE
      field :last_update_date_time,                 :DTM
      field :last_update_facility,                  :HD
      field :taxonomic_classification_code,         :CWE
      field :breed_code,                            :CWE
      field :strain,                                :ST
      field :production_class_code,                 :CWE
      field :tribal_citizenship,                    :CWE
      field :patient_telecommunication_information, :XTN
    end
  end
end
