# frozen_string_literal: true

module Pipehat
  module Segment
    # Blood Unit Information
    class BUI < Base
      add_field :set_id,                      :SI
      add_field :blood_unit_identifier,       :EI
      add_field :blood_unit_type,             :CWE
      add_field :blood_unit_weight,           :NM
      add_field :weight_units,                :CNE
      add_field :blood_unit_volume,           :NM
      add_field :volume_units,                :CNE
      add_field :container_catalog_number,    :ST
      add_field :container_lot_number,        :ST
      add_field :container_manufacturer,      :XON
      add_field :transport_temperature,       :NR
      add_field :transport_temperature_units, :CNE
      add_field :action_code,                 :ID
    end
  end
end
