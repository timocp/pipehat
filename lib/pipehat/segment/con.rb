# frozen_string_literal: true

module Pipehat
  module Segment
    # Consent Segment
    class CON < Base
      add_field :set_id,                                    :SI
      add_field :consent_type,                              :CWE
      add_field :consent_form_id_and_version,               :ST
      add_field :consent_form_number,                       :EI
      add_field :consent_text,                              :FT
      add_field :subject_specific_consent_text,             :FT
      add_field :consent_background_information,            :FT
      add_field :subject_specific_consent_background_text,  :FT
      add_field :consenter_imposed_limitations,             :FT
      add_field :consent_mode,                              :CNE
      add_field :consent_status,                            :CNE
      add_field :consent_discussion_date_time,              :DTM
      add_field :consent_decision_date_time,                :DTM
      add_field :consent_effective_date_time,               :DTM
      add_field :consent_end_date_time,                     :DTM
      add_field :subject_competence_indicator,              :ID
      add_field :translator_assistance_indicator,           :ID
      add_field :language_translated_to,                    :CWE
      add_field :informational_material_supplied_indicator, :ID
      add_field :consent_bypass_reason,                     :CWE
      add_field :consent_disclosure_level,                  :ID
      add_field :consent_non_disclosure_reason,             :CWE
      add_field :non_subject_consenter_reason,              :CWE
      add_field :consenter_id,                              :XPN
      add_field :relationship_to_subject,                   :CWE
    end
  end
end
