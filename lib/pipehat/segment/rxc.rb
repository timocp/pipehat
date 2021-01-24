# frozen_string_literal: true

module Pipehat
  module Segment
    # Pharmacy/Treatment Component Order
    class RXC < Base
      add_field :rx_component_type,                    :ID
      add_field :component_code,                       :CWE
      add_field :component_amount,                     :NM
      add_field :component_units,                      :CWE
      add_field :component_strength,                   :NM
      add_field :component_strength_units,             :CWE
      add_field :supplementary_code,                   :CWE
      add_field :component_drug_strength_volume,       :NM
      add_field :component_drug_strength_volume_units, :CWE
      add_field :dispense_amount,                      :NM
      add_field :dispense_units,                       :CWE
    end
  end
end
