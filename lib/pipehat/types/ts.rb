# frozen_string_literal: true

# Time Stamp
Pipehat.define_type :TS do
  add_component :time,                :DTM
  add_component :degree_of_precision, :ID
end
