# frozen_string_literal: true

module Pipehat
  module Segment
    # Blood product dispense status
    class BPX < Base
      add_field :set_id,                          :SI
      add_field :bp_dispense_status,              :CWE
      add_field :bp_status,                       :ID
      add_field :bp_date_time_of_status,          :DTM
      add_field :bc_donation_id,                  :EI
      add_field :bc_component,                    :CNE
      add_field :bc_donation_type_intended_use,   :CNE
      add_field :cp_commercial_product,           :CWE
      add_field :cp_manufacturer,                 :XON
      add_field :cp_lot_number,                   :EI
      add_field :bp_blood_group,                  :CNE
      add_field :bc_special_testing,              :CNE
      add_field :bp_expiration_date_time,         :DTM
      add_field :bp_quantity,                     :NM
      add_field :bp_amount,                       :NM
      add_field :bp_units,                        :CWE
      add_field :bp_unique_id,                    :EI
      add_field :bp_actual_dispensed_to_location, :PL
      add_field :bp_actual_dispensed_to_address,  :XAD
      add_field :bp_dispensed_to_receiver,        :XCN
      add_field :bp_dispensing_individual,        :XCN
      add_field :action_code,                     :ID
    end
  end
end
