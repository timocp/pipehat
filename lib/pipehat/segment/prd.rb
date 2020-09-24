# frozen_string_literal: true

module Pipehat
  module Segment
    # Provider Data
    class PRD < Base
      field :provider_role,                                   :CWE
      field :provider_name,                                   :XPN
      field :provider_address,                                :XAD
      field :provider_location,                               :PL
      field :provider_communication_information,              :XTN
      field :preferred_method_of_contact,                     :CWE
      field :provider_identifiers,                            :PLN
      field :effective_start_date_of_provider_role,           :DTM
      field :effective_end_date_of_provider_role,             :DTM
      field :provider_organization_name_and_identifier,       :XON
      field :provider_organization_address,                   :XAD
      field :provider_organization_location_information,      :PL
      field :provider_organization_communication_information, :XTN
      field :provider_organization_method_of_contact,         :CWE
    end
  end
end
