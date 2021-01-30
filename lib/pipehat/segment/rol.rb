# frozen_string_literal: true

module Pipehat
  module Segment
    # Role
    class ROL < Base
      add_field :role_instance_id,               :EI
      add_field :action_code,                    :ID
      add_field :role,                           :CWE
      add_field :role_person,                    :XCN
      add_field :role_begin_date_time,           :DTM
      add_field :role_end_date_time,             :DTM
      add_field :role_duration,                  :CWE
      add_field :role_action_reason,             :CWE
      add_field :provider_type,                  :CWE
      add_field :organization_unit_type,         :CWE
      add_field :office_home_address_birthplace, :XAD
      add_field :phone,                          :XTN
      add_field :persons_location,               :PL
      add_field :organization,                   :XON
    end
  end
end
