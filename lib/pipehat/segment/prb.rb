# frozen_string_literal: true

module Pipehat
  module Segment
    # Problem Details
    class PRB < Base
      add_field :action_code,                                             :ID
      add_field :action_date_time,                                        :DTM
      add_field :problem_id,                                              :CWE
      add_field :problem_instance_id,                                     :EI
      add_field :episode_of_care_id,                                      :EI
      add_field :problem_list_priority,                                   :NM
      add_field :problem_established_date_time,                           :DTM
      add_field :anticipated_problem_resolution_date_time,                :DTM
      add_field :actual_problem_resolution_date_time,                     :DTM
      add_field :problem_classification,                                  :CWE
      add_field :problem_management_discipline,                           :CWE
      add_field :problem_persistence,                                     :CWE
      add_field :problem_confirmation_status,                             :CWE
      add_field :problem_life_cycle_status,                               :CWE
      add_field :problem_life_cycle_status_date_time,                     :DTM
      add_field :problem_date_of_onset,                                   :DTM
      add_field :problem_onset_text,                                      :ST
      add_field :problem_ranking,                                         :CWE
      add_field :certainty_of_problem,                                    :CWE
      add_field :probability_of_problem,                                  :NM
      add_field :individual_awareness_of_problem,                         :CWE
      add_field :problem_prognosis,                                       :CWE
      add_field :individual_awareness_of_prognosis,                       :CWE
      add_field :family_significant_other_awareness_of_problem_prognosis, :ST
      add_field :security_sensitivity,                                    :CWE
      add_field :problem_severity,                                        :CWE
      add_field :problem_perspective,                                     :CWE
      add_field :mood_code,                                               :CNE
    end
  end
end
