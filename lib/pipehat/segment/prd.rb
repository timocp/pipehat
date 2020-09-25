# frozen_string_literal: true

module Pipehat
  module Segment
    # Provider Data
    class PRD < Base
      add_field :provider_role,                                   :CWE
      add_field :provider_name,                                   :XPN
      add_field :provider_address,                                :XAD
      add_field :provider_location,                               :PL
      add_field :provider_communication_information,              :XTN
      add_field :preferred_method_of_contact,                     :CWE
      add_field :provider_identifiers,                            :PLN
      add_field :effective_start_date_of_provider_role,           :DTM
      add_field :effective_end_date_of_provider_role,             :DTM
      add_field :provider_organization_name_and_identifier,       :XON
      add_field :provider_organization_address,                   :XAD
      add_field :provider_organization_location_information,      :PL
      add_field :provider_organization_communication_information, :XTN
      add_field :provider_organization_method_of_contact,         :CWE
    end
  end
end
