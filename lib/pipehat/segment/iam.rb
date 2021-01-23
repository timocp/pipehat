# frozen_string_literal: true

module Pipehat
  module Segment
    # Patient Adverse Reaction Information
    class IAM < Base
      add_field :set_id,                                   :SI
      add_field :allergen_type_code,                       :CWE
      add_field :allergen_code_mnemonic_description,       :CWE
      add_field :allergy_severity_code,                    :CWE
      add_field :allergy_reaction_code,                    :ST
      add_field :allergy_action_code,                      :CNE
      add_field :allergy_unique_identifier,                :EI
      add_field :action_reason,                            :ST
      add_field :sensitivity_to_causative_agent_code,      :CWE
      add_field :allergen_group_code_mnemonic_description, :CWE
      add_field :onset_date,                               :DT
      add_field :onset_date_text,                          :ST
      add_field :reported_date_time,                       :DTM
      add_field :reported_by,                              :XPN
      add_field :relationship_to_patient_code,             :CWE
      add_field :alert_device_code,                        :CWE
      add_field :allergy_clinical_status_code,             :CWE
      add_field :statused_by_person,                       :XCN
      add_field :statused_by_organization,                 :XON
      add_field :statused_at_date_time,                    :DTM
      add_field :inactivated_by_person,                    :XCN
      add_field :inactivated_date_time,                    :DTM
      add_field :initially_recorded_by_person,             :XCN
      add_field :initially_recorded_date_time,             :DTM
      add_field :modified_by_person,                       :XCN
      add_field :modified_date_time,                       :DTM
      add_field :clinician_identified_code,                :CWE
      add_field :initially_recorded_by_organization,       :XON
      add_field :modified_by_organization,                 :XON
      add_field :inactivated_by_organization,              :XON
    end
  end
end
