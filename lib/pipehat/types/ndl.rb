# frozen_string_literal: true

# Name with Date and Location
Pipehat.define_type :NDL do
  add_component :name,                  :CNN
  add_component :start_date_time,       :DTM
  add_component :end_date_time,         :DTM
  add_component :point_of_care,         :IS
  add_component :room,                  :IS
  add_component :bed,                   :IS
  add_component :facility,              :HD
  add_component :location_status,       :IS
  add_component :patient_location_type, :IS
  add_component :building,              :IS
  add_component :floor,                 :IS
end
