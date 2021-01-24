# frozen_string_literal: true

module Pipehat
  module Segment
    # Shipment
    class SHP < Base
      add_field :shipment_id,                    :EI
      add_field :internal_shipment_id,           :EI
      add_field :shipment_status,                :CWE
      add_field :shipment_status_date_time,      :DTM
      add_field :shipment_status_reason,         :TX
      add_field :shipment_priority,              :CWE
      add_field :shipment_confidentiality,       :CWE
      add_field :number_of_packages_in_shipment, :NM
      add_field :shipment_condition,             :CWE
      add_field :shipment_handling_code,         :CWE
      add_field :shipment_risk_code,             :CWE
      add_field :action_code,                    :ID
    end
  end
end
