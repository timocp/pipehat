# frozen_string_literal: true

module Pipehat
  module Segment
    # Observation/Result
    class OBX < Base
      add_field :set_id,                                   :SI
      add_field :value_type,                               :ID
      add_field :observation_identifier,                   :CWE
      add_field :observation_sub_id,                       :OG
      add_field :observation_value,                        :Varies
      add_field :units,                                    :CWE
      add_field :reference_range,                          :ST
      add_field :interpretation_codes,                     :CWE
      add_field :probability,                              :NM
      add_field :nature_of_abnormal_test,                  :ID
      add_field :observation_result_status,                :ID
      add_field :effective_date_of_reference_range,        :DTM
      add_field :user_defined_access_checks,               :ST
      add_field :date_time_of_the_observation,             :DTM
      add_field :producers_id,                             :CWE
      add_field :responsible_observer,                     :XCN
      add_field :observation_method,                       :CWE
      add_field :equipment_instance_identifier,            :EI
      add_field :date_time_of_the_analysis,                :DTM
      add_field :observation_site,                         :CWE
      add_field :observation_instance_identifier,          :EI
      add_field :mood_code,                                :CNE
      add_field :performing_organization_name,             :XON
      add_field :performing_organization_address,          :XAD
      add_field :performing_organization_medical_director, :XCN
      add_field :patient_results_release_category,         :ID
      add_field :root_cause,                               :CWE
      add_field :local_process_control,                    :CWE
      add_field :observation_type,                         :ID
      add_field :observation_sub_type,                     :ID
      add_field :action_code,                              :ID
      add_field :observation_value_absent_reason,          :CWE
      add_field :observation_related_specimen_identifier,  :EIP
    end
  end
end
