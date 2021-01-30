# frozen_string_literal: true

module Pipehat
  module Segment
    # Observation Request
    class OBR < Base
      add_field :set_id,                                         :SI
      add_field :placer_order_number,                            :EI
      add_field :filler_order_number,                            :EI
      add_field :universal_service_identifier,                   :CWE
      add_field :priority,                                       :ID
      add_field :requested_date_time,                            :TS
      add_field :observation_date_time,                          :DTM
      add_field :observation_end_date_time,                      :DTM
      add_field :collection_volume,                              :CQ
      add_field :collector_identifier,                           :XCN
      add_field :specimen_action_code,                           :ID
      add_field :danger_code,                                    :CWE
      add_field :relevant_clinical_information,                  :CWE
      add_field :specimen_received_date_time,                    :TS
      add_field :specimen_source,                                :SPS
      add_field :ordering_provider,                              :XCN
      add_field :order_callback_phone_number,                    :XTN
      add_field :placer_field_1,                                 :ST
      add_field :placer_field_2,                                 :ST
      add_field :filler_field_1,                                 :ST
      add_field :filler_field_2,                                 :ST
      add_field :results_rpt_status_chng_date_time,              :DTM
      add_field :charge_to_practice,                             :MOC
      add_field :diagnostic_serv_sect_id,                        :ID
      add_field :result_status,                                  :ID
      add_field :parent_result,                                  :PRL
      add_field :quantity_timing,                                :TQ
      add_field :result_copies_to,                               :XCN
      add_field :parent_results_observation_identifier,          :EIP
      add_field :transportation_mode,                            :ID
      add_field :reason_for_study,                               :CWE
      add_field :principal_result_interpreter,                   :NDL
      add_field :assistant_result_interpreter,                   :NDL
      add_field :technician,                                     :NDL
      add_field :transcriptionist,                               :NDL
      add_field :scheduled_date_time,                            :DTM
      add_field :number_of_sample_containers,                    :NM
      add_field :transport_logistics_of_collected_sample,        :CWE
      add_field :collectors_comment,                             :CWE
      add_field :transport_arrangement_responsibility,           :CWE
      add_field :transport_arranged,                             :ID
      add_field :escort_required,                                :ID
      add_field :planned_patient_transport_comment,              :CWE
      add_field :procedure_code,                                 :CNE
      add_field :procedure_code_modifier,                        :CNE
      add_field :placer_supplemental_service_information,        :CWE
      add_field :filler_supplemental_service_information,        :CWE
      add_field :medically_necessary_duplicate_procedure_reason, :CWE
      add_field :result_handling,                                :CWE
      add_field :parent_universal_service_identifier,            :CWE
      add_field :observation_group_id,                           :EI
      add_field :parent_observation_group_id,                    :EI
      add_field :alternate_placer_order_number,                  :CX
      add_field :parent_order,                                   :EIP
      add_field :action_code,                                    :ID
    end
  end
end
