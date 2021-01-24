# frozen_string_literal: true

module Pipehat
  module Segment
    # Procedures
    class PR1 < Base
      add_field :set_id,                             :SI
      add_field :procedure_coding_method,            :IS
      add_field :procedure_code,                     :CNE
      add_field :procedure_description,              :ST
      add_field :procedure_date_time,                :DTM
      add_field :procedure_functional_type,          :CWE
      add_field :procedure_minutes,                  :NM
      add_field :anesthesiologist,                   :XCN
      add_field :anesthesia_code,                    :CWE
      add_field :anesthesia_minutes,                 :NM
      add_field :surgeon,                            :XCN
      add_field :procedure_practitioner,             :XCN
      add_field :consent_code,                       :CWE
      add_field :procedure_priority,                 :NM
      add_field :associated_diagnosis_code,          :CWE
      add_field :procedure_code_modifier,            :CNE
      add_field :procedure_drg_type,                 :CWE
      add_field :tissue_type_code,                   :CWE
      add_field :procedure_identifier,               :EI
      add_field :procedure_action_code,              :ID
      add_field :drg_procedure_determination_status, :CWE
      add_field :drg_procedure_relevance,            :CWE
      add_field :treating_organizational_unit,       :PL
      add_field :respiratory_within_surgery,         :ID
      add_field :parent_procedure_id,                :EI
    end
  end
end
