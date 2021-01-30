# frozen_string_literal: true

module Pipehat
  module Segment
    # Pharmacy/Treatment Order
    class RXO < Base
      add_field :requested_give_code,                        :CWE
      add_field :requested_give_amount_minimum,              :NM
      add_field :requested_give_amount_maximum,              :NM
      add_field :requested_give_units,                       :CWE
      add_field :requested_dosage_form,                      :CWE
      add_field :providers_pharmacy_treatment_instructions,  :CWE
      add_field :providers_administration_instructions,      :CWE
      add_field :deliver_to_location,                        :LA1
      add_field :allow_substitutions,                        :ID
      add_field :requested_dispense_code,                    :CWE
      add_field :requested_dispense_amount,                  :NM
      add_field :requested_dispense_units,                   :CWE
      add_field :number_of_refills,                          :NM
      add_field :ordering_providers_dea_number,              :XCN
      add_field :pharmacist_treatment_suppliers_verifier_id, :XCN
      add_field :needs_human_review,                         :ID
      add_field :requested_give_per,                         :ST
      add_field :requested_give_strength,                    :NM
      add_field :requested_give_strength_units,              :CWE
      add_field :indication,                                 :CWE
      add_field :requested_give_rate_amount,                 :ST
      add_field :requested_give_rate_units,                  :CWE
      add_field :total_daily_dose,                           :CQ
      add_field :supplementary_code,                         :CWE
      add_field :requested_drug_strength_volume,             :NM
      add_field :requested_drug_strength_volume_units,       :CWE
      add_field :pharmacy_order_type,                        :ID
      add_field :dispensing_interval,                        :NM
      add_field :medication_instance_identifier,             :EI
      add_field :segment_instance_identifier,                :EI
      add_field :mood_code,                                  :CNE
      add_field :dispensing_pharmacy,                        :CWE
      add_field :dispensing_pharmacy_address,                :XAD
      add_field :deliver_to_patient_location,                :PL
      add_field :deliver_to_address,                         :XAD
      add_field :pharmacy_phone_number,                      :XTN
    end
  end
end
