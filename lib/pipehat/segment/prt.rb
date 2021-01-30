# frozen_string_literal: true

module Pipehat
  module Segment
    # Participation Information
    class PRT < Base
      add_field :participation_instance_id,      :EI
      add_field :action_code,                    :ID
      add_field :action_reason,                  :CWE
      add_field :role_of_participation,          :CWE
      add_field :person,                         :XCN
      add_field :person_provider_type,           :CWE
      add_field :organization_unit_type,         :CWE
      add_field :organization,                   :XON
      add_field :location,                       :PL
      add_field :device,                         :EI
      add_field :begin_date_time,                :DTM
      add_field :end_date_time,                  :DTM
      add_field :qualitative_duration,           :CWE
      add_field :address,                        :XAD
      add_field :telecommunication_address,      :XTN
      add_field :udi_device_identifier,          :EI
      add_field :device_manufacture_date,        :DTM
      add_field :device_expiry_date,             :DTM
      add_field :device_lot_number,              :ST
      add_field :device_serial_number,           :ST
      add_field :device_donation_identification, :EI
      add_field :device_type,                    :CNE
      add_field :preferred_method_of_contact,    :CWE
      add_field :contact_identifiers,            :PLN
    end
  end
end
