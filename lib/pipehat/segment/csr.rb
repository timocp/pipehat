# frozen_string_literal: true

module Pipehat
  module Segment
    # Clinical Study Registration
    class CSR < Base
      add_field :sponsor_study_id,                        :EI
      add_field :alternate_study_id,                      :EI
      add_field :institution_registering_the_patient,     :CWE
      add_field :sponsor_patient_id,                      :CX
      add_field :alternate_patient_id_csr,                :CX
      add_field :date_time_of_patient_study_registration, :DTM
      add_field :person_performing_study_registration,    :XCN
      add_field :study_authorizing_provider,              :XCN
      add_field :date_time_patient_study_consent_signed,  :DTM
      add_field :patient_study_eligibility_status,        :CWE
      add_field :study_randomization_date_time,           :DTM
      add_field :randomized_study_arm,                    :CWE
      add_field :stratum_for_study_randomization,         :CWE
      add_field :patient_evaluability_status,             :CWE
      add_field :date_time_ended_study,                   :DTM
      add_field :reason_ended_study,                      :CWE
      add_field :action_code,                             :ID
    end
  end
end
