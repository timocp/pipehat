# frozen_string_literal: true

module Pipehat
  module Segment
    # Common Order
    class ORC < Base
      add_field :order_control,                               :ID
      add_field :placer_order_number,                         :EI
      add_field :filler_order_number,                         :EI
      add_field :placer_group_number,                         :EI
      add_field :order_status,                                :ID
      add_field :response_flag,                               :ID
      add_field :quantity_timing,                             :ST
      add_field :parent,                                      :EIP
      add_field :date_time_of_transaction,                    :DTM
      add_field :entered_by,                                  :XCN
      add_field :verified_by,                                 :XCN
      add_field :ordering_provider,                           :XCN
      add_field :enterers_location,                           :PL
      add_field :call_back_phone_number,                      :XTN
      add_field :order_effective_date_time,                   :DTM
      add_field :order_control_code_reason,                   :CWE
      add_field :entering_organization,                       :CWE
      add_field :entering_device,                             :CWE
      add_field :action_by,                                   :XCN
      add_field :advanced_beneficiary_notice_code,            :CWE
      add_field :ordering_facility_name,                      :XON
      add_field :ordering_facility_address,                   :XAD
      add_field :ordering_facility_phone_number,              :XTN
      add_field :ordering_provider_address,                   :XAD
      add_field :order_status_modifier,                       :CWE
      add_field :advanced_beneficiary_notice_override_reason, :CWE
      add_field :fillers_expected_availability_date_time,     :DTM
      add_field :confidentiality_code,                        :CWE
      add_field :order_type,                                  :CWE
      add_field :enterer_authorization_mode,                  :CNE
      add_field :parent_universal_service_identifier,         :CWE
      add_field :advanced_beneficiary_notice_date,            :DT
      add_field :alternate_placer_order_number,               :CX
      add_field :order_workflow_profile,                      :EI
    end
  end
end
