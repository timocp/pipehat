# frozen_string_literal: true

# Name with Date and Location
Pipehat.define_type :NDL do
  component :name,                  :CNN
  component :start_date_time,       :DTM
  component :end_date_time,         :DTM
  component :point_of_care,         :IS
  component :room,                  :IS
  component :bed,                   :IS
  component :facility,              :HD
  component :location_status,       :IS
  component :patient_location_type, :IS
  component :building,              :IS
  component :floor,                 :IS
end
