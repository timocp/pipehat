# frozen_string_literal: true

module Pipehat
  module Segment
    # Next of Kin / Associated Parties
    class NK1 < Base
      add_field :set_id,                                         :SI
      add_field :name,                                           :XPN
      add_field :relationship,                                   :CWE
      add_field :address,                                        :XAD
      add_field :phone_number,                                   :XTN
      add_field :business_phone_number,                          :XTN
      add_field :contact_role,                                   :CWE
      add_field :start_date,                                     :DT
      add_field :end_date,                                       :DT
      add_field :next_of_kin_associated_parties_job_title,       :ST
      add_field :next_of_kin_associated_parties_job_code_class,  :JCC
      add_field :next_of_kin_associated_parties_employee_number, :CX
      add_field :organization_name,                              :XON
      add_field :marital_status,                                 :CWE
      add_field :administrative_sex,                             :CWE
      add_field :date_time_of_birth,                             :DTM
      add_field :living_dependency,                              :CWE
      add_field :ambulatory_status,                              :CWE
      add_field :citizenship,                                    :CWE
      add_field :primary_language,                               :CWE
      add_field :living_arrangement,                             :CWE
      add_field :publicity_code,                                 :CWE
      add_field :protection_indicator,                           :ID
      add_field :student_indicator,                              :CWE
      add_field :religion,                                       :CWE
      add_field :mothers_maiden_name,                            :XPN
      add_field :nationality,                                    :CWE
      add_field :ethnic_group,                                   :CWE
      add_field :contact_reason,                                 :CWE
      add_field :contact_persons_name,                           :XPN
      add_field :contact_persons_telephone_number,               :XTN
      add_field :contact_persons_address,                        :XAD
      add_field :next_of_kin_associated_partys_identifiers,      :CX
      add_field :job_status,                                     :CWE
      add_field :race,                                           :CWE
      add_field :handicap,                                       :CWE
      add_field :contact_person_social_security_number,          :ST
      add_field :next_of_kin_birth_place,                        :ST
      add_field :vip_indicator,                                  :CWE
      add_field :next_of_kin_telecommunication_information,      :XTN
      add_field :contact_persons_telecommunication_information,  :XTN
    end
  end
end
