# frozen_string_literal: true

module Pipehat
  module Segment
    # Pharmacy/Treatment Dispense
    class RXD < Base
      add_field :dispense_sub_id_counter,           :NM
      add_field :dispense_give_code,                :CWE
      add_field :date_time_dispensed,               :DTM
      add_field :actual_dispense_amount,            :NM
      add_field :actual_dispense_units,             :CWE
      add_field :actual_dosage_form,                :CWE
      add_field :prescription_number,               :ST
      add_field :number_of_refills_remaining,       :NM
      add_field :dispense_notes,                    :ST
      add_field :dispensing_provider,               :XCN
      add_field :substitution_status,               :ID
      add_field :total_daily_dose,                  :CQ
      add_field :dispense_to_location,              :LA2
      add_field :needs_human_review,                :ID
      add_field :special_dispensing_instructions,   :CWE
      add_field :actual_strength,                   :NM
      add_field :actual_strength_unit,              :CWE
      add_field :substance_lot_number,              :ST
      add_field :substance_expiration_date,         :DTM
      add_field :substance_manufacturer_name,       :CWE
      add_field :indication,                        :CWE
      add_field :dispense_package_size,             :NM
      add_field :dispense_package_size_unit,        :CWE
      add_field :dispense_package_method,           :ID
      add_field :supplementary_code,                :CWE
      add_field :initiating_location,               :CWE
      add_field :packaging_assembly_location,       :CWE
      add_field :actual_drug_strength_volume,       :NM
      add_field :actual_drug_strength_volume_units, :CWE
      add_field :dispense_to_pharmacy,              :CWE
      add_field :dispense_to_pharmacy_address,      :XAD
      add_field :pharmacy_order_type,               :ID
      add_field :dispense_type,                     :CWE
      add_field :pharmacy_phone_number,             :XTN
      add_field :dispense_tag_identifier,           :EI
    end
  end
end
