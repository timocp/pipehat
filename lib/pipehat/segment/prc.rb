# frozen_string_literal: true

module Pipehat
  module Segment
    # Pricing Segment
    class PRC < Base
      add_field :primary_key_value,     :CWE
      add_field :facility_id,           :CWE
      add_field :department,            :CWE
      add_field :valid_patient_classes, :CWE
      add_field :price,                 :CP
      add_field :formula,               :ST
      add_field :minimum_quantity,      :NM
      add_field :maximum_quantity,      :NM
      add_field :minimum_price,         :MO
      add_field :maximum_price,         :MO
      add_field :effective_start_date,  :DTM
      add_field :effective_end_date,    :DTM
      add_field :price_override_flag,   :CWE
      add_field :billing_category,      :CWE
      add_field :chargeable_flag,       :ID
      add_field :active_inactive_flag,  :ID
      add_field :cost,                  :MO
      add_field :charge_on_indicator,   :CWE
    end
  end
end
