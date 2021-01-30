# frozen_string_literal: true

module Pipehat
  module Segment
    # Patient Identification
    class PID < Base
      add_field :set_id,                                :SI
      add_field :patient_id,                            :CX
      add_field :patient_identifier_list,               :CX
      add_field :alternate_patient_id,                  :CX
      add_field :patient_name,                          :XPN
      add_field :mothers_maiden_name,                   :XPN
      add_field :date_time_of_birth,                    :DTM
      add_field :administrative_sex,                    :CWE
      add_field :patient_alias,                         :XPN
      add_field :race,                                  :CWE
      add_field :patient_address,                       :XAD
      add_field :county_code,                           :IS
      add_field :phone_number_home,                     :XTN
      add_field :phone_number_business,                 :XTN
      add_field :primary_language,                      :CWE
      add_field :marital_status,                        :CWE
      add_field :religion,                              :CWE
      add_field :patient_account_number,                :CX
      add_field :ssn_number,                            :ST
      add_field :drivers_license_number,                :DLN
      add_field :mothers_identifier,                    :CX
      add_field :ethnic_group,                          :CWE
      add_field :birth_place,                           :ST
      add_field :multiple_birth_indicator,              :ID
      add_field :birth_order,                           :NM
      add_field :citizenship,                           :CWE
      add_field :veterans_military_status,              :CWE
      add_field :nationality,                           :CE
      add_field :patient_death_date_and_time,           :DTM
      add_field :patient_death_indicator,               :ID
      add_field :identity_unknown_indicator,            :ID
      add_field :identity_reliability_code,             :CWE
      add_field :last_update_date_time,                 :DTM
      add_field :last_update_facility,                  :HD
      add_field :taxonomic_classification_code,         :CWE
      add_field :breed_code,                            :CWE
      add_field :strain,                                :ST
      add_field :production_class_code,                 :CWE
      add_field :tribal_citizenship,                    :CWE
      add_field :patient_telecommunication_information, :XTN
    end
  end
end
