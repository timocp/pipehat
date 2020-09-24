# frozen_string_literal: true

module Pipehat
  module Segment
    # Referral Information
    class RF1 < Base
      field :referral_status,                           :CWE
      field :referral_priority,                         :CWE
      field :referral_type,                             :CWE
      field :referral_disposition,                      :CWE
      field :referral_category,                         :CWE
      field :originating_referral_identifier,           :EI
      field :effective_date,                            :DTM
      field :expiration_date,                           :DTM
      field :process_date,                              :DTM
      field :referral_reason,                           :CWE
      field :external_referral_identifier,              :EI
      field :referral_documentation_completion_status,  :CWE
      field :planned_treatment_stop_date,               :DTM
      field :referral_reason_text,                      :ST
      field :number_of_authorized_treatments_units,     :CQ
      field :number_of_used_treatments_units,           :CQ
      field :number_of_schedule_treatments_units,       :CQ
      field :remaining_benefit_amount,                  :MO
      field :authorized_provider,                       :XCN
      field :authorized_health_professional,            :XCN
      field :source_text,                               :ST
      field :source_date,                               :DTM
      field :source_phone,                              :XTN
      field :comment,                                   :ST
      field :action_code,                               :ID
    end
  end
end
