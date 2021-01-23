# frozen_string_literal: true

module Pipehat
  module Segment
    # Software Segment
    class SFT < Base
      add_field :software_vendor_organization,                 :XON
      add_field :software_certified_version_or_release_number, :ST
      add_field :software_product_name,                        :ST
      add_field :software_binary_id,                           :ST
      add_field :software_product_information,                 :TX
      add_field :software_install_date,                        :DTM
    end
  end
end
