# frozen_string_literal: true

module Pipehat
  module Segment
    # Additional Basic Attributes
    class OM7 < Base
      add_field :sequence_number,                        :NM
      add_field :universal_service_identifier,           :CWE
      add_field :category_identifier,                    :CWE
      add_field :category_description,                   :TX
      add_field :category_synonym,                       :ST
      add_field :effective_test_service_start_date_time, :DTM
      add_field :effective_test_service_end_date_time,   :DTM
      add_field :test_service_default_duration_quantity, :NM
      add_field :test_service_default_duration_units,    :CWE
      add_field :test_service_default_frequency,         :CWE
      add_field :consent_indicator,                      :ID
      add_field :consent_identifier,                     :CWE
      add_field :consent_effective_start_date_time,      :DTM
      add_field :consent_effective_end_date_time,        :DTM
      add_field :consent_interval_quantity,              :NM
      add_field :consent_interval_units,                 :CWE
      add_field :consent_waiting_period_quantity,        :NM
      add_field :consent_waiting_period_units,           :CWE
      add_field :effective_date_time_of_change,          :DTM
      add_field :entered_by,                             :XCN
      add_field :orderable_at_location,                  :PL
      add_field :formulary_status,                       :CWE
      add_field :special_order_indicator,                :ID
      add_field :primary_key_value_cdm,                  :CWE
    end
  end
end
