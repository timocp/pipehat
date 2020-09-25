# frozen_string_literal: true

# Extended Address
Pipehat.define_type :XAD do
  add_component :street_address,                :SAD
  add_component :other_designation,             :ST
  add_component :city,                          :ST
  add_component :state_or_province,             :ST
  add_component :zip_or_postal_code,            :ST
  add_component :country,                       :ID
  add_component :address_type,                  :ID
  add_component :other_geographic_designation,  :ST
  add_component :county_parish_code,            :CWE
  add_component :census_tract,                  :CWE
  add_component :address_representation_code,   :ID
  add_component :address_validity_range,        :ST
  add_component :effective_date,                :DTM
  add_component :expiration_date,               :DTM
  add_component :expiration_reason,             :CWE
  add_component :temporary_indicator,           :ID
  add_component :bad_address_indicator,         :ID
  add_component :address_usage,                 :ID
  add_component :addressee,                     :ST
  add_component :comment,                       :ST
  add_component :preference_order,              :NM
  add_component :protection_code,               :CWE
  add_component :address_identifier,            :EI
end
