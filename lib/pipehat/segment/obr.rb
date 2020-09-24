# frozen_string_literal: true

module Pipehat
  module Segment
    # Observation Request
    class OBR < Base
      field :set_id,                                          :SI
      field :placer_order_number,                             :EI
      field :filler_order_number,                             :EI
      field :universal_service_identifier,                    :CWE
      field :priority,                                        :ST
      field :requested_date_time,                             :ST
      field :observation_date_time,                           :DTM
      field :observation_end_date_time,                       :DTM
      field :collection_volume,                               :CQ
      field :collector_identifier,                            :XCN
      field :specimen_action_code,                            :ID
      field :danger_code,                                     :CWE
      field :relevant_clinical_information,                   :ST
      field :specimen_received_date_time,                     :ST
      field :specimen_source,                                 :ST
      field :ordering_provider,                               :XCN
      field :order_callback_phone_number,                     :XTN
      field :placer_field_1,                                  :ST
      field :placer_field_2,                                  :ST
      field :filler_field_1,                                  :ST
      field :filler_field_2,                                  :ST
      field :results_rpt_status_chng_date_time,               :DTM
      field :charge_to_practice,                              :MOC
      field :diagnostic_serv_sect_id,                         :ID
      field :result_status,                                   :ID
      field :parent_result,                                   :PRL
      field :quantity_timing,                                 :ST
      field :result_copies_to,                                :XCN
      field :parent,                                          :EIP
      field :transportation_mode,                             :ID
      field :reason_for_study,                                :CWE
      field :principal_result_interpreter,                    :NDL
      field :assistant_result_interpreter,                    :NDL
      field :technician,                                      :NDL
      field :transcriptionist,                                :NDL
      field :scheduled_date_time,                             :DTM
      field :number_of_sample_containers,                     :NM
      field :transport_logistics_of_collected_sample,         :CWE
      field :collectors_comment,                              :CWE
      field :transport_arrangement_responsibility,            :CWE
      field :transport_arranged,                              :ID
      field :escort_required,                                 :ID
      field :planned_patient_transport_comment,               :CWE
      field :procedure_code,                                  :CNE
      field :procedure_code_modifier,                         :CNE
      field :placer_supplemental_service_information,         :CWE
      field :filler_supplemental_service_information,         :CWE
      field :medically_necessary_duplicate_procedure_reason,  :CWE
      field :result_handling,                                 :CWE
      field :parent_universal_service_identifier,             :CWE
      field :observation_group_id,                            :EI
      field :parent_observation_group_id,                     :EI
      field :alternate_placer_order_number,                   :CX
      field :parent_order,                                    :EIP
    end
  end
end
