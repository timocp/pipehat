# frozen_string_literal: true

module Pipehat
  module Segment
    # Uniform Billing Data 2
    class UB2 < Base
      add_field :set_id,                     :SI
      add_field :co_insurance_days,          :ST
      add_field :condition_code,             :CWE
      add_field :covered_days,               :ST
      add_field :non_covered_days,           :ST
      add_field :value_amount_code,          :UVC
      add_field :occurrence_code_date,       :OCD
      add_field :occurrence_span_code_dates, :OSP
      add_field :uniform_billing_locator_2,  :ST
      add_field :uniform_billing_locator_11, :ST
      add_field :uniform_billing_locator_31, :ST
      add_field :document_control_number,    :ST
      add_field :uniform_billing_locator_49, :ST
      add_field :uniform_billing_locator_56, :ST
      add_field :uniform_billing_locator_57, :ST
      add_field :uniform_billing_locator_78, :ST
      add_field :special_visit_count,        :NM
    end
  end
end
