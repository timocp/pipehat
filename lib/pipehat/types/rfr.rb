# frozen_string_literal: true

# Reference Range
Pipehat.define_type :RFR do
  add_component :numeric_range,         :NR
  add_component :administrative_sex,    :CWE
  add_component :age_range,             :NR
  add_component :gestational_age_range, :NR
  add_component :species,               :ST
  add_component :race_subspecies,       :ST
  add_component :conditions,            :TX
end
