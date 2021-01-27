# frozen_string_literal: true

module Pipehat
  module Segment
    # Pathway
    class PTH < Base
      add_field :action_code,                                :ID
      add_field :pathway_id,                                 :CWE
      add_field :pathway_instance_id,                        :EI
      add_field :pathway_established_date_time,              :DTM
      add_field :pathway_life_cycle_status,                  :CWE
      add_field :change_pathway_life_cycle_status_date_time, :DTM
      add_field :mood_code,                                  :CNE
    end
  end
end
