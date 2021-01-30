# frozen_string_literal: true

module Pipehat
  module Segment
    # Shipment Package
    class PAC < Base
      add_field :set_id,                     :SI
      add_field :package_id,                 :EI
      add_field :parent_package_id,          :EI
      add_field :position_in_parent_package, :NA
      add_field :package_type,               :CWE
      add_field :package_condition,          :CWE
      add_field :package_handling_code,      :CWE
      add_field :package_risk_code,          :CWE
      add_field :action_code,                :ID
    end
  end
end
