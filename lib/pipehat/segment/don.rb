# frozen_string_literal: true

module Pipehat
  module Segment
    # Donation
    class DON < Base
      add_field :donation_identification_number,       :EI
      add_field :donation_type,                        :CNE
      add_field :phlebotomy_start_date_time,           :DTM
      add_field :phlebotomy_end_date_time,             :DTM
      add_field :donation_duration,                    :NM
      add_field :donation_duration_units,              :CNE
      add_field :intended_procedure_type,              :CNE
      add_field :actual_procedure_type,                :CNE
      add_field :donor_eligibility_flag,               :ID
      add_field :donor_eligibility_procedure_type,     :CNE
      add_field :donor_eligibility_date,               :DTM
      add_field :process_interruption,                 :CNE
      add_field :process_interruption_reason,          :CNE
      add_field :phlebotomy_issue,                     :CNE
      add_field :intended_recipient_blood_relative,    :ID
      add_field :intended_recipient_name,              :XPN
      add_field :intended_recipient_dob,               :DTM
      add_field :intended_recipient_facility,          :XON
      add_field :intended_recipient_procedure_date,    :DTM
      add_field :intended_recipient_ordering_provider, :XPN
      add_field :phlebotomy_status,                    :CNE
      add_field :arm_stick,                            :CNE
      add_field :bleed_start_phlebotomist,             :XPN
      add_field :bleed_end_phlebotomist,               :XPN
      add_field :aphaeresis_type_machine,              :ST
      add_field :aphaeresis_machine_serial_number,     :ST
      add_field :donor_reaction,                       :ID
      add_field :final_review_staff_id,                :XPN
      add_field :final_review_date_time,               :DTM
      add_field :number_of_tubes_collected,            :NM
      add_field :donation_sample_identifier,           :EI
      add_field :donation_accept_staff,                :XCN
      add_field :donation_material_review_staff,       :XCN
      add_field :action_code,                          :ID
    end
  end
end
