# frozen_string_literal: true

module Pipehat
  module Segment
    # Referral Information
    class RF1 < Base
      add_field :referral_status,                           :CWE
      add_field :referral_priority,                         :CWE
      add_field :referral_type,                             :CWE
      add_field :referral_disposition,                      :CWE
      add_field :referral_category,                         :CWE
      add_field :originating_referral_identifier,           :EI
      add_field :effective_date,                            :DTM
      add_field :expiration_date,                           :DTM
      add_field :process_date,                              :DTM
      add_field :referral_reason,                           :CWE
      add_field :external_referral_identifier,              :EI
      add_field :referral_documentation_completion_status,  :CWE
      add_field :planned_treatment_stop_date,               :DTM
      add_field :referral_reason_text,                      :ST
      add_field :number_of_authorized_treatments_units,     :CQ
      add_field :number_of_used_treatments_units,           :CQ
      add_field :number_of_schedule_treatments_units,       :CQ
      add_field :remaining_benefit_amount,                  :MO
      add_field :authorized_provider,                       :XCN
      add_field :authorized_health_professional,            :XCN
      add_field :source_text,                               :ST
      add_field :source_date,                               :DTM
      add_field :source_phone,                              :XTN
      add_field :comment,                                   :ST
      add_field :action_code,                               :ID
    end
  end
end
