# frozen_string_literal: true

module Pipehat
  module Segment
    # Accident
    class ACC < Base
      add_field :accident_date_time,             :DTM
      add_field :accident_code,                  :CWE
      add_field :accident_location,              :ST
      add_field :auto_accident_state,            :CWE
      add_field :accident_job_related_indicator, :ID
      add_field :accident_death_indicator,       :ID
      add_field :entered_by,                     :XCN
      add_field :accident_description,           :ST
      add_field :brought_in_by,                  :ST
      add_field :police_notified_indicator,      :ID
      add_field :accident_address,               :XAD
      add_field :degree_of_patient_liability,    :NM
      add_field :accident_identifier,            :EI
    end
  end
end
