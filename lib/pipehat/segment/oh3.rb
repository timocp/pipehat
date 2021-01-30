# frozen_string_literal: true

module Pipehat
  module Segment
    # Usual Work
    class OH3 < Base
      add_field :set_id,                    :SI
      add_field :action_code,               :ID
      add_field :occupation,                :CWE
      add_field :industry,                  :CWE
      add_field :usual_occupation_duration, :NM
      add_field :start_year,                :DT
      add_field :entered_date,              :DT
      add_field :work_unique_identifier,    :EI
    end
  end
end
