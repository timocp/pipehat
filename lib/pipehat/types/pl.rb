# frozen_string_literal: true

# Person Location
Pipehat.define_type :PL do
  component :point_of_care,                     :HD
  component :room,                              :HD
  component :bed,                               :HD
  component :facility,                          :HD
  component :location_status,                   :IS
  component :person_location_type,              :IS
  component :building,                          :HD
  component :floor,                             :HD
  component :location_description,              :ST
  component :comprehensive_location_identifier, :EI
  component :assigning_authority_for_location,  :HD
end
