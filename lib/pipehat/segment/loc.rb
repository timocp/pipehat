# frozen_string_literal: true

module Pipehat
  module Segment
    # Location Identification
    class LOC < Base
      add_field :primary_key_value,     :PL
      add_field :location_description,  :ST
      add_field :location_type,         :CWE
      add_field :organization_name,     :XON
      add_field :location_address,      :XAD
      add_field :location_phone,        :XTN
      add_field :license_number,        :CWE
      add_field :location_equipment,    :CWE
      add_field :location_service_code, :CWE
    end
  end
end
