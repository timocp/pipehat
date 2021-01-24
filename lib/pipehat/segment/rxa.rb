# frozen_string_literal: true

module Pipehat
  module Segment
    # Pharmacy/Treatment Administration
    class RXA < Base
      add_field :give_sub_id_counter,                     :NM
      add_field :administration_sub_id_counter,           :NM
      add_field :date_time_start_of_administration,       :DTM
      add_field :date_time_end_of_administration,         :DTM
      add_field :administered_code,                       :CWE
      add_field :administered_amount,                     :NM
      add_field :administered_units,                      :CWE
      add_field :administered_dosage_form,                :CWE
      add_field :administration_notes,                    :CWE
      add_field :administering_provider,                  :XCN
      add_field :administered_at_location,                :LA2
      add_field :administered_per,                        :ST
      add_field :administered_strength,                   :NM
      add_field :administered_strength_units,             :CWE
      add_field :substance_lot_number,                    :ST
      add_field :substance_expiration_date,               :DTM
      add_field :substance_manufacturer_name,             :CWE
      add_field :substance_treatment_refusal_reason,      :CWE
      add_field :indication,                              :CWE
      add_field :completion_status,                       :ID
      add_field :action_code,                             :ID
      add_field :system_entry_date_time,                  :DTM
      add_field :administered_drug_strength_volume,       :NM
      add_field :administered_drug_strength_volume_units, :CWE
      add_field :administered_barcode_identifier,         :CWE
      add_field :pharmacy_order_type,                     :ID
      add_field :administer_at,                           :PL
      add_field :administered_at_address,                 :XAD
      add_field :administered_tag_identifier,             :EI
    end
  end
end
