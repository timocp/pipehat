# frozen_string_literal: true

module Pipehat
  module Segment
    #  Authorization Information
    class AUT < Base
      add_field :authorizing_payor_plan_id,             :CWE
      add_field :authorizing_payor_company_id,          :CWE
      add_field :authorizing_payor_company_name,        :ST
      add_field :authorization_effective_date,          :DTM
      add_field :authorization_expiration_date,         :DTM
      add_field :authorization_identifier,              :EI
      add_field :reimbursement_limit,                   :CP
      add_field :requested_number_of_treatments,        :CQ
      add_field :authorized_number_of_treatments,       :CQ
      add_field :process_date,                          :DTM
      add_field :requested_discipline,                  :CWE
      add_field :authorized_discipline,                 :CWE
      add_field :authorization_referral_type,           :CWE
      add_field :approval_status,                       :CWE
      add_field :planned_treatment_stop_date,           :DTM
      add_field :clinical_service,                      :CWE
      add_field :reason_text,                           :ST
      add_field :number_of_authorized_treatments_units, :CQ
      add_field :number_of_used_treatments_units,       :CQ
      add_field :number_of_schedule_treatments_units,   :CQ
      add_field :encounter_type,                        :CWE
      add_field :remaining_benefit_amount,              :MO
      add_field :authorized_provider,                   :XON
      add_field :authorized_health_professional,        :XCN
      add_field :source_text,                           :ST
      add_field :source_date,                           :DTM
      add_field :source_phone,                          :XTN
      add_field :comment,                               :ST
      add_field :action_code,                           :ID
    end
  end
end
