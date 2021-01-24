# frozen_string_literal: true

module Pipehat
  module Segment
    # Blood product order
    class BPO < Base
      add_field :set_id,                             :SI
      add_field :bp_universal_service_identifier,    :CWE
      add_field :bp_processing_requirements,         :CWE
      add_field :bp_quantity,                        :NM
      add_field :bp_amount,                          :NM
      add_field :bp_units,                           :CWE
      add_field :bp_intended_use_date_time,          :DTM
      add_field :bp_intended_dispense_from_location, :PL
      add_field :bp_intended_dispense_from_address,  :XAD
      add_field :bp_requested_dispense_date_time,    :DTM
      add_field :bp_requested_dispense_to_location,  :PL
      add_field :bp_requested_dispense_to_address,   :XAD
      add_field :bp_indication_for_use,              :CWE
      add_field :bp_informed_consent_indicator,      :ID
    end
  end
end
