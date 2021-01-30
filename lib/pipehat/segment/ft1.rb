# frozen_string_literal: true

module Pipehat
  module Segment
    # Financial Transaction
    class FT1 < Base
      add_field :set_id,                                                 :SI
      add_field :transaction_id,                                         :CX
      add_field :transaction_batch_id,                                   :ST
      add_field :transaction_date,                                       :DR
      add_field :transaction_posting_date,                               :DTM
      add_field :transaction_type,                                       :CWE
      add_field :transaction_code,                                       :CWE
      add_field :transaction_description,                                :ST
      add_field :transaction_description_alt,                            :ST
      add_field :transaction_quantity,                                   :NM
      add_field :transaction_amount_extended,                            :CP
      add_field :transaction_amount_unit,                                :CP
      add_field :department_code,                                        :CWE
      add_field :health_plan_id,                                         :CWE
      add_field :insurance_amount,                                       :CP
      add_field :assigned_patient_location,                              :PL
      add_field :fee_schedule,                                           :CWE
      add_field :patient_type,                                           :CWE
      add_field :diagnosis_code,                                         :CWE
      add_field :performed_by_code,                                      :XCN
      add_field :ordered_by_code,                                        :XCN
      add_field :unit_cost,                                              :CP
      add_field :filler_order_number,                                    :EI
      add_field :entered_by_code,                                        :XCN
      add_field :procedure_code,                                         :CNE
      add_field :procedure_code_modifier,                                :CNE
      add_field :advanced_beneficiary_notice_code,                       :CWE
      add_field :medically_necessary_duplicate_procedure_reason,         :CWE
      add_field :ndc_code,                                               :CWE
      add_field :payment_reference_id,                                   :CX
      add_field :transaction_reference_key,                              :SI
      add_field :performing_facility,                                    :XON
      add_field :ordering_facility,                                      :XON
      add_field :item_number,                                            :CWE
      add_field :model_number,                                           :ST
      add_field :special_processing_code,                                :CWE
      add_field :clinic_code,                                            :CWE
      add_field :referral_number,                                        :CX
      add_field :authorization_number,                                   :CX
      add_field :service_provider_taxonomy_code,                         :CWE
      add_field :revenue_code,                                           :CWE
      add_field :prescription_number,                                    :ST
      add_field :ndc_qty_and_uom,                                        :CQ
      add_field :dme_certificate_of_medical_necessity_transmission_code, :CWE
      add_field :dme_certification_type_code,                            :CWE
      add_field :dme_duration_value,                                     :NM
      add_field :dme_certification_revision_date,                        :DT
      add_field :dme_initial_certification_date,                         :DT
      add_field :dme_last_certification_date,                            :DT
      add_field :dme_length_of_medical_necessity_days,                   :NM
      add_field :dme_rental_price,                                       :MO
      add_field :dme_purchase_price,                                     :MO
      add_field :dme_frequency_code,                                     :CWE
      add_field :dme_certification_condition_indicator,                  :ID
      add_field :dme_condition_indicator_code,                           :CWE
      add_field :service_reason_code,                                    :CWE
    end
  end
end
