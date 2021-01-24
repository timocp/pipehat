# frozen_string_literal: true

module Pipehat
  module Segment
    # Pharmacy/Treatment Give
    class RXG < Base
      add_field :give_sub_id_counter,                 :NM
      add_field :dispense_sub_id_counter,             :NM
      add_field :quantity_timing,                     :TQ
      add_field :give_code,                           :CWE
      add_field :give_amount_minimum,                 :NM
      add_field :give_amount_maximum,                 :NM
      add_field :give_units,                          :CWE
      add_field :give_dosage_form,                    :CWE
      add_field :administration_notes,                :CWE
      add_field :substitution_status,                 :ID
      add_field :dispense_to_location,                :LA2
      add_field :needs_human_review,                  :ID
      add_field :special_administration_instructions, :CWE
      add_field :give_per,                            :ST
      add_field :give_rate_amount,                    :ST
      add_field :give_rate_units,                     :CWE
      add_field :give_strength,                       :NM
      add_field :give_strength_units,                 :CWE
      add_field :substance_lot_number,                :ST
      add_field :substance_expiration_date,           :DTM
      add_field :substance_manufacturer_name,         :CWE
      add_field :indication,                          :CWE
      add_field :give_drug_strength_volume,           :NM
      add_field :give_drug_strength_volume_units,     :CWE
      add_field :give_barcode_identifier,             :CWE
      add_field :pharmacy_order_type,                 :ID
      add_field :dispense_to_pharmacy,                :CWE
      add_field :dispense_to_pharmacy_address,        :XAD
      add_field :deliver_to_patient_location,         :PL
      add_field :deliver_to_address,                  :XAD
      add_field :give_tag_identifier,                 :EI
      add_field :dispense_amount,                     :NM
      add_field :dispense_units,                      :CWE
    end
  end
end
