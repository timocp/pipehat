# frozen_string_literal: true

# Timing Quantity
Pipehat.define_type :TQ do
  add_component :quantity,            :CQ
  add_component :interval,            :RI
  add_component :duration,            :ST
  add_component :start_date_time,     :TS
  add_component :end_date_time,       :TS
  add_component :priority,            :ST
  add_component :condition,           :ST
  add_component :text,                :TX
  add_component :conjunction,         :ID
  add_component :order_sequencing,    :OSD
  add_component :occurrence_duration, :CE
  add_component :total_occurrences,   :NM
end
