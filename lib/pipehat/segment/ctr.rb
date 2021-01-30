# frozen_string_literal: true

module Pipehat
  module Segment
    # Contract Master Outbound
    class CTR < Base
      add_field :contract_identifier,            :EI
      add_field :contract_description,           :ST
      add_field :contract_status,                :CWE
      add_field :effective_date,                 :DTM
      add_field :expiration_date,                :DTM
      add_field :contract_owner_name,            :XPN
      add_field :contract_originator_name,       :XPN
      add_field :supplier_type,                  :CWE
      add_field :contract_type,                  :CWE
      add_field :free_on_board_freight_terms,    :CNE
      add_field :price_protection_date,          :DTM
      add_field :fixed_price_contract_indicator, :CNE
      add_field :group_purchasing_organization,  :XON
      add_field :maximum_markup,                 :MOP
      add_field :actual_markup,                  :MOP
      add_field :corporation,                    :XON
      add_field :parent_of_corporation,          :XON
      add_field :pricing_tier_level,             :CWE
      add_field :contract_priority,              :ST
      add_field :class_of_trade,                 :CWE
      add_field :associated_contract_id,         :EI
    end
  end
end
