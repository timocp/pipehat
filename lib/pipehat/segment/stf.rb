# frozen_string_literal: true

module Pipehat
  module Segment
    # Staff Identification
    class STF < Base
      add_field :primary_key_value,                  :CWE
      add_field :staff_identifier_list,              :CX
      add_field :staff_name,                         :XPN
      add_field :staff_type,                         :CWE
      add_field :administrative_sex,                 :CWE
      add_field :date_time_of_birth,                 :DTM
      add_field :active_inactive_flag,               :ID
      add_field :department,                         :CWE
      add_field :hospital_service,                   :CWE
      add_field :phone,                              :XTN
      add_field :office_home_address_birthplace,     :XAD
      add_field :institution_activation_date,        :DIN
      add_field :institution_inactivation_date,      :DIN
      add_field :backup_person_id,                   :CWE
      add_field :e_mail_address,                     :ST
      add_field :preferred_method_of_contact,        :CWE
      add_field :marital_status,                     :CWE
      add_field :job_title,                          :ST
      add_field :job_code_class,                     :JCC
      add_field :employment_status_code,             :CWE
      add_field :additional_insured_on_auto,         :ID
      add_field :drivers_license_number,             :DLN
      add_field :copy_auto_ins,                      :ID
      add_field :auto_ins_expires,                   :DT
      add_field :date_last_dmv_review,               :DT
      add_field :date_next_dmv_review,               :DT
      add_field :race,                               :CWE
      add_field :ethnic_group,                       :CWE
      add_field :re_activation_approval_indicator,   :ID
      add_field :citizenship,                        :CWE
      add_field :date_time_of_death,                 :DTM
      add_field :death_indicator,                    :ID
      add_field :institution_relationship_type_code, :CWE
      add_field :institution_relationship_period,    :DR
      add_field :expected_return_date,               :DT
      add_field :cost_center_code,                   :CWE
      add_field :generic_classification_indicator,   :ID
      add_field :inactive_reason_code,               :CWE
      add_field :generic_resource_type_or_category,  :CWE
      add_field :religion,                           :CWE
      add_field :signature,                          :ED
    end
  end
end
