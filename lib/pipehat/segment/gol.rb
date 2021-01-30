# frozen_string_literal: true

module Pipehat
  module Segment
    # Goal Detail
    class GOL < Base
      add_field :action_code,                      :ID
      add_field :action_date_time,                 :DTM
      add_field :goal_id,                          :CWE
      add_field :goal_instance_id,                 :EI
      add_field :episode_of_care_id,               :EI
      add_field :goal_list_priority,               :NM
      add_field :goal_established_date_time,       :DTM
      add_field :expected_goal_achieve_date_time,  :DTM
      add_field :goal_classification,              :CWE
      add_field :goal_management_discipline,       :CWE
      add_field :current_goal_review_status,       :CWE
      add_field :current_goal_review_date_time,    :DTM
      add_field :next_goal_review_date_time,       :DTM
      add_field :previous_goal_review_date_time,   :DTM
      add_field :goal_review_interval,             :TQ
      add_field :goal_evaluation,                  :CWE
      add_field :goal_evaluation_comment,          :ST
      add_field :goal_life_cycle_status,           :CWE
      add_field :goal_life_cycle_status_date_time, :DTM
      add_field :goal_target_type,                 :CWE
      add_field :goal_target_name,                 :XPN
      add_field :mood_code,                        :CNE
    end
  end
end
