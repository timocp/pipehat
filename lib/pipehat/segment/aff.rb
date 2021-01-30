# frozen_string_literal: true

module Pipehat
  module Segment
    # Professional Affiliation
    class AFF < Base
      add_field :set_id,                                           :SI
      add_field :professional_organization,                        :XON
      add_field :professional_organization_address,                :XAD
      add_field :professional_organization_affiliation_date_range, :DR
      add_field :professional_affiliation_additional_information,  :ST
    end
  end
end
