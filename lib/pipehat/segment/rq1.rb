# frozen_string_literal: true

module Pipehat
  module Segment
    # Requisition Detail-1
    class RQ1 < Base
      add_field :anticipated_price,       :ST
      add_field :manufacturer_identifier, :CWE
      add_field :manufacturers_catalog,   :ST
      add_field :vendor_id,               :CWE
      add_field :vendor_catalog,          :ST
      add_field :taxable,                 :ID
      add_field :substitute_allowed,      :ID
    end
  end
end
