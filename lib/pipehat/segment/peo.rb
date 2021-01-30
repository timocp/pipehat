# frozen_string_literal: true

module Pipehat
  module Segment
    # Product Experience Observation
    class PEO < Base
      add_field :event_identifiers_used,                     :CWE
      add_field :event_symptom_diagnosis_code,               :CWE
      add_field :event_onset_date_time,                      :DTM
      add_field :event_exacerbation_date_time,               :DTM
      add_field :event_improved_date_time,                   :DTM
      add_field :event_ended_data_time,                      :DTM
      add_field :event_location_occurred_address,            :XAD
      add_field :event_qualification,                        :ID
      add_field :event_serious,                              :ID
      add_field :event_expected,                             :ID
      add_field :event_outcome,                              :ID
      add_field :patient_outcome,                            :ID
      add_field :event_description_from_others,              :FT
      add_field :event_description_from_original_reporter,   :FT
      add_field :event_description_from_patient,             :FT
      add_field :event_description_from_practitioner,        :FT
      add_field :event_description_from_autopsy,             :FT
      add_field :cause_of_death,                             :CWE
      add_field :primary_observer_name,                      :XPN
      add_field :primary_observer_address,                   :XAD
      add_field :primary_observer_telephone,                 :XTN
      add_field :primary_observers_qualification,            :ID
      add_field :confirmation_provided_by,                   :ID
      add_field :primary_observer_aware_date_time,           :DTM
      add_field :primary_observers_identity_may_be_divulged, :ID
    end
  end
end
