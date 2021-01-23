# frozen_string_literal: true

module Pipehat
  module Segment
    # Person Employment Status
    class OH1 < Base
      add_field :set_id,                              :SI
      add_field :action_code,                         :ID
      add_field :employment_status,                   :CWE
      add_field :employment_status_start_date,        :DT
      add_field :employment_status_end_date,          :DT
      add_field :entered_date,                        :DT
      add_field :employment_status_unique_identifier, :EI
    end
  end
end
