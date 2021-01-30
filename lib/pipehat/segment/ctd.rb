# frozen_string_literal: true

module Pipehat
  module Segment
    # Contact Data
    class CTD < Base
      add_field :contact_role,                      :CWE
      add_field :contact_name,                      :XPN
      add_field :contact_address,                   :XAD
      add_field :contact_location,                  :PL
      add_field :contact_communication_information, :XTN
      add_field :preferred_method_of_contact,       :CWE
      add_field :contact_identifiers,               :PLN
    end
  end
end
