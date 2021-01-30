# frozen_string_literal: true

module Pipehat
  module Segment
    # Inventory Detail
    class INV < Base
      add_field :substance_identifier,                :CWE
      add_field :substance_status,                    :CWE
      add_field :substance_type,                      :CWE
      add_field :inventory_container_identifier,      :CWE
      add_field :container_carrier_identifier,        :CWE
      add_field :position_on_carrier,                 :CWE
      add_field :initial_quantity,                    :NM
      add_field :current_quantity,                    :NM
      add_field :available_quantity,                  :NM
      add_field :consumption_quantity,                :NM
      add_field :quantity_units,                      :CWE
      add_field :expiration_date_time,                :DTM
      add_field :first_used_date_time,                :DTM
      add_field :on_board_stability_duration,         :TQ
      add_field :test_fluid_identifier,               :CWE
      add_field :manufacturer_lot_number,             :ST
      add_field :manufacturer_identifier,             :CWE
      add_field :supplier_identifier,                 :CWE
      add_field :on_board_stability_time,             :CQ
      add_field :target_value,                        :CQ
      add_field :equipment_state_indicator_type_code, :CWE
      add_field :equipment_state_indicator_value,     :CQ
    end
  end
end
