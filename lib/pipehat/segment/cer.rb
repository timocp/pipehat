# frozen_string_literal: true

module Pipehat
  module Segment
    # Certificate Detail
    class CER < Base
      add_field :set_id,                                :SI
      add_field :serial_number,                         :ST
      add_field :version,                               :ST
      add_field :granting_authority,                    :XON
      add_field :issuing_authority,                     :XCN
      add_field :signature,                             :ED
      add_field :granting_country,                      :ID
      add_field :granting_state_province,               :CWE
      add_field :granting_county_parish,                :CWE
      add_field :certificate_type,                      :CWE
      add_field :certificate_domain,                    :CWE
      add_field :subject_id,                            :EI
      add_field :subject_name,                          :ST
      add_field :subject_directory_attribute_extension, :CWE
      add_field :subject_public_key_info,               :CWE
      add_field :authority_key_identifier,              :CWE
      add_field :basic_constraint,                      :ID
      add_field :crl_distribution_point,                :CWE
      add_field :jurisdiction_country,                  :ID
      add_field :jurisdiction_state_province,           :CWE
      add_field :jurisdiction_county_parish,            :CWE
      add_field :jurisdiction_breadth,                  :CWE
      add_field :granting_date,                         :DTM
      add_field :issuing_date,                          :DTM
      add_field :activation_date,                       :DTM
      add_field :inactivation_date,                     :DTM
      add_field :expiration_date,                       :DTM
      add_field :renewal_date,                          :DTM
      add_field :revocation_date,                       :DTM
      add_field :revocation_reason_code,                :CWE
      add_field :certificate_status_code,               :CWE
    end
  end
end
