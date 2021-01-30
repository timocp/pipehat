# frozen_string_literal: true

# Location with Address Variation 1
Pipehat.define_type :LA1 do
  add_component :point_of_care,         :IS
  add_component :room,                  :IS
  add_component :bed,                   :IS
  add_component :facility,              :HD
  add_component :location_status,       :IS
  add_component :patient_location_type, :IS
  add_component :building,              :IS
  add_component :floor,                 :IS
  add_component :address,               :AD
end
