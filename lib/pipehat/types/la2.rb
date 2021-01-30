# frozen_string_literal: true

# Location with Address Variation 2
Pipehat.define_type :LA2 do
  add_component :point_of_care,                :IS
  add_component :room,                         :IS
  add_component :bed,                          :IS
  add_component :facility,                     :HD
  add_component :location_status,              :IS
  add_component :patient_location_type,        :IS
  add_component :building,                     :IS
  add_component :floor,                        :IS
  add_component :street_address,               :ST
  add_component :other_designation,            :ST
  add_component :city,                         :ST
  add_component :state_or_province,            :ST
  add_component :zip_or_postal_code,           :ST
  add_component :country,                      :ID
  add_component :address_type,                 :ID
  add_component :other_geographic_designation, :ST
end
