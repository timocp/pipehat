# frozen_string_literal: true

module Pipehat
  module Segment
    # Product Detail Country
    class PDC < Base
      add_field :manufacturer_distributor, :XON
      add_field :country,                  :CWE
      add_field :brand_name,               :ST
      add_field :device_family_name,       :ST
      add_field :generic_name,             :CWE
      add_field :model_identifier,         :ST
      add_field :catalogue_identifier,     :ST
      add_field :other_identifier,         :ST
      add_field :product_code,             :CWE
      add_field :marketing_basis,          :ID
      add_field :marketing_approval_id,    :ST
      add_field :labeled_shelf_life,       :CQ
      add_field :expected_shelf_life,      :CQ
      add_field :date_first_marketed,      :DTM
      add_field :date_last_marketed,       :DTM
    end
  end
end
