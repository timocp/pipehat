# frozen_string_literal: true

module Pipehat
  module Segment
    # Grouping/Reimbursement - Procedure Line Item
    class GP2 < Base
      add_field :revenue_code,                           :CWE
      add_field :number_of_service_units,                :NM
      add_field :charge,                                 :CP
      add_field :reimbursement_action_code,              :CWE
      add_field :denial_or_rejection_code,               :CWE
      add_field :oce_edit_code,                          :CWE
      add_field :ambulatory_payment_classification_code, :CWE
      add_field :modifier_edit_code,                     :CWE
      add_field :payment_adjustment_code,                :CWE
      add_field :packaging_status_code,                  :CWE
      add_field :expected_cms_payment_amount,            :CP
      add_field :reimbursement_type_code,                :CWE
      add_field :co_pay_amount,                          :CP
      add_field :pay_rate_per_service_unit,              :NM
    end
  end
end
