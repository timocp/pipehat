# frozen_string_literal: true

# Extended Address
Pipehat.define_type :XAD do
  component :street_address,                :SAD
  component :other_designation,             :ST
  component :city,                          :ST
  component :state_or_province,             :ST
  component :zip_or_postal_code,            :ST
  component :country,                       :ID
  component :address_type,                  :ID
  component :other_geographic_designation,  :ST
  component :county_parish_code,            :CWE
  component :census_tract,                  :CWE
  component :address_representation_code,   :ID
  component :address_validity_range,        :ST
  component :effective_date,                :DTM
  component :expiration_date,               :DTM
  component :expiration_reason,             :CWE
  component :temporary_indicator,           :ID
  component :bad_address_indicator,         :ID
  component :address_usage,                 :ID
  component :addressee,                     :ST
  component :comment,                       :ST
  component :preference_order,              :NM
  component :protection_code,               :CWE
  component :address_identifier,            :EI
end
