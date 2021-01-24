# frozen_string_literal: true

module Pipehat
  module Segment
    # Payer Master File
    class PM1 < Base
      add_field :health_plan_id,                               :CWE
      add_field :insurance_company_id,                         :CX
      add_field :insurance_company_name,                       :XON
      add_field :insurance_company_address,                    :XAD
      add_field :insurance_co_contact_person,                  :XPN
      add_field :insurance_co_phone_number,                    :XTN
      add_field :group_number,                                 :ST
      add_field :group_name,                                   :XON
      add_field :plan_effective_date,                          :DT
      add_field :plan_expiration_date,                         :DT
      add_field :patient_dob_required,                         :ID
      add_field :patient_gender_required,                      :ID
      add_field :patient_relationship_required,                :ID
      add_field :patient_signature_required,                   :ID
      add_field :diagnosis_required,                           :ID
      add_field :service_required,                             :ID
      add_field :patient_name_required,                        :ID
      add_field :patient_address_required,                     :ID
      add_field :subscribers_name_required,                    :ID
      add_field :workmans_comp_indicator,                      :ID
      add_field :bill_type_required,                           :ID
      add_field :commercial_carrier_name_and_address_required, :ID
      add_field :policy_number_pattern,                        :ST
      add_field :group_number_pattern,                         :ST
    end
  end
end
