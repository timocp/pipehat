# frozen_string_literal: true

# Person Location
Pipehat.define_type :PL do
  add_component :point_of_care,                     :HD
  add_component :room,                              :HD
  add_component :bed,                               :HD
  add_component :facility,                          :HD
  add_component :location_status,                   :IS
  add_component :person_location_type,              :IS
  add_component :building,                          :HD
  add_component :floor,                             :HD
  add_component :location_description,              :ST
  add_component :comprehensive_location_identifier, :EI
  add_component :assigning_authority_for_location,  :HD
end
