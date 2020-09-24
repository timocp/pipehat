# frozen_string_literal: true

module Pipehat
  module Segment
    # Common Order
    class ORC < Base
      field :order_control,                               :ID
      field :placer_order_number,                         :EI
      field :filler_order_number,                         :EI
      field :placer_group_number,                         :EI
      field :order_status,                                :ID
      field :response_flag,                               :ID
      field :quantity_timing,                             :ST
      field :parent,                                      :EIP
      field :date_time_of_transaction,                    :DTM
      field :entered_by,                                  :XCN
      field :verified_by,                                 :XCN
      field :ordering_provider,                           :XCN
      field :enterers_location,                           :PL
      field :call_back_phone_number,                      :XTN
      field :order_effective_date_time,                   :DTM
      field :order_control_code_reason,                   :CWE
      field :entering_organization,                       :CWE
      field :entering_device,                             :CWE
      field :action_by,                                   :XCN
      field :advanced_beneficiary_notice_code,            :CWE
      field :ordering_facility_name,                      :XON
      field :ordering_facility_address,                   :XAD
      field :ordering_facility_phone_number,              :XTN
      field :ordering_provider_address,                   :XAD
      field :order_status_modifier,                       :CWE
      field :advanced_beneficiary_notice_override_reason, :CWE
      field :fillers_expected_availability_date_time,     :DTM
      field :confidentiality_code,                        :CWE
      field :order_type,                                  :CWE
      field :enterer_authorization_mode,                  :CNE
      field :parent_universal_service_identifier,         :CWE
      field :advanced_beneficiary_notice_date,            :DT
      field :alternate_placer_order_number,               :CX
      field :order_workflow_profile,                      :EI
    end
  end
end
