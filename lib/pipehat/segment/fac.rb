# frozen_string_literal: true

module Pipehat
  module Segment
    # Facility
    class FAC < Base
      add_field :facility_id,                           :EI
      add_field :facility_type,                         :ID
      add_field :facility_address,                      :XAD
      add_field :facility_telecommunication,            :XTN
      add_field :contact_person,                        :XCN
      add_field :contact_title,                         :ST
      add_field :contact_address,                       :XAD
      add_field :contact_telecommunication,             :XTN
      add_field :signature_authority,                   :XCN
      add_field :signature_authority_title,             :ST
      add_field :signature_authority_address,           :XAD
      add_field :signature_authority_telecommunication, :XTN
    end
  end
end
