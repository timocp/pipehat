# frozen_string_literal: true

module Pipehat
  module Segment
    # Disability
    class DB1 < Base
      add_field :set_id,                         :SI
      add_field :disabled_person_code,           :CWE
      add_field :disabled_person_identifier,     :CX
      add_field :disability_indicator,           :ID
      add_field :disability_start_date,          :DT
      add_field :disability_end_date,            :DT
      add_field :disability_return_to_work_date, :DT
      add_field :disability_unable_to_work_date, :DT
    end
  end
end
