# frozen_string_literal: true

module Pipehat
  module Segment
    # Charge Description Master
    class CDM < Base
      add_field :primary_key_value,              :CWE
      add_field :charge_code_alias,              :CWE
      add_field :charge_description_short,       :ST
      add_field :charge_description_long,        :ST
      add_field :description_override_indicator, :CWE
      add_field :exploding_charges,              :CWE
      add_field :procedure_code,                 :CNE
      add_field :active_inactive_flag,           :ID
      add_field :inventory_number,               :CWE
      add_field :resource_load,                  :NM
      add_field :contract_number,                :CX
      add_field :contract_organization,          :XON
      add_field :room_fee_indicator,             :ID
    end
  end
end
