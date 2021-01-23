# frozen_string_literal: true

# Day Type and Number
Pipehat.define_type :DTN do
  add_component :day_type,       :CWE
  add_component :number_of_days, :NM
end
