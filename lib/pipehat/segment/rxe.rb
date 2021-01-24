# frozen_string_literal: true

module Pipehat
  module Segment
    # Pharmacy/Treatment Encoded Order
    class RXE < Base
      add_field :quantity_timing,                             :TQ
      add_field :give_code,                                   :CWE
      add_field :give_amount_minimum,                         :NM
      add_field :give_amount_maximum,                         :NM
      add_field :give_units,                                  :CWE
      add_field :give_dosage_form,                            :CWE
      add_field :providers_administration_instructions,       :CWE
      add_field :deliver_to_location,                         :LA1
      add_field :substitution_status,                         :ID
      add_field :dispense_amount,                             :NM
      add_field :dispense_units,                              :CWE
      add_field :number_of_refills,                           :NM
      add_field :ordering_providers_dea_number,               :XCN
      add_field :pharmacist_treatment_suppliers_verifier_id,  :XCN
      add_field :prescription_number,                         :ST
      add_field :number_of_refills_remaining,                 :NM
      add_field :number_of_refills_doses_dispensed,           :NM
      add_field :d_t_of_most_recent_refill_or_dose_dispensed, :DTM
      add_field :total_daily_dose,                            :CQ
      add_field :needs_human_review,                          :ID
      add_field :special_dispensing_instructions,             :CWE
      add_field :give_per,                                    :ST
      add_field :give_rate_amount,                            :ST
      add_field :give_rate_units,                             :CWE
      add_field :give_strength,                               :NM
      add_field :give_strength_units,                         :CWE
      add_field :give_indication,                             :CWE
      add_field :dispense_package_size,                       :NM
      add_field :dispense_package_size_unit,                  :CWE
      add_field :dispense_package_method,                     :ID
      add_field :supplementary_code,                          :CWE
      add_field :original_order_date_time,                    :DTM
      add_field :give_drug_strength_volume,                   :NM
      add_field :give_drug_strength_volume_units,             :CWE
      add_field :controlled_substance_schedule,               :CWE
      add_field :formulary_status,                            :ID
      add_field :pharmaceutical_substance_alternative,        :CWE
      add_field :pharmacy_of_most_recent_fill,                :CWE
      add_field :initial_dispense_amount,                     :NM
      add_field :dispensing_pharmacy,                         :CWE
      add_field :dispensing_pharmacy_address,                 :XAD
      add_field :deliver_to_patient_location,                 :PL
      add_field :deliver_to_address,                          :XAD
      add_field :pharmacy_order_type,                         :ID
      add_field :pharmacy_phone_number,                       :XTN
    end
  end
end
