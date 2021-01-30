# frozen_string_literal: true

module Pipehat
  module Segment
    # Timing/Quantity
    class TQ1 < Base
      add_field :set_id,                  :SI
      add_field :quantity,                :CQ
      add_field :repeat_pattern,          :RPT
      add_field :explicit_time,           :TM
      add_field :relative_time_and_units, :CQ
      add_field :service_duration,        :CQ
      add_field :start_date_time,         :DTM
      add_field :end_date_time,           :DTM
      add_field :priority,                :CWE
      add_field :condition_text,          :TX
      add_field :text_instruction,        :TX
      add_field :conjunction,             :ID
      add_field :occurrence_duration,     :CQ
      add_field :total_occurrences,       :NM
    end
  end
end
