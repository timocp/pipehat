# frozen_string_literal: true

# Address
Pipehat.define_type :AD do
  add_component :street_address,               :ST
  add_component :other_designation,            :ST
  add_component :city,                         :ST
  add_component :state_or_province,            :ST
  add_component :zip_or_postal_code,           :ST
  add_component :country,                      :ID
  add_component :address_type,                 :ID
  add_component :other_geographic_designation, :ST
end
