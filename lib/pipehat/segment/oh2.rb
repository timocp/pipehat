# frozen_string_literal: true

module Pipehat
  module Segment
    # Past or Present Job
    class OH2 < Base
      add_field :set_id,                       :SI
      add_field :action_code,                  :ID
      add_field :entered_date,                 :DT
      add_field :occupation,                   :CWE
      add_field :industry,                     :CWE
      add_field :work_classification,          :CWE
      add_field :job_start_date,               :DT
      add_field :job_end_date,                 :DT
      add_field :work_schedule,                :CWE
      add_field :average_hours_worked_per_day, :NM
      add_field :average_days_worked_per_week, :NM
      add_field :employer_organization,        :XON
      add_field :employer_address,             :XAD
      add_field :supervisory_level,            :CWE
      add_field :job_duties,                   :ST
      add_field :occupational_hazards,         :FT
      add_field :job_unique_identifier,        :EI
      add_field :current_job_indicator,        :CWE
    end
  end
end
