# frozen_string_literal: true

module Pipehat
  module Segment
    # Scheduling Activity Information
    class SCH < Base
      add_field :placer_appointment_id,               :EI
      add_field :filler_appointment_id,               :EI
      add_field :occurrence_number,                   :NM
      add_field :placer_order_group_number,           :EI
      add_field :schedule_id,                         :CWE
      add_field :event_reason,                        :CWE
      add_field :appointment_reason,                  :CWE
      add_field :appointment_type,                    :CWE
      add_field :appointment_duration,                :NM
      add_field :appointment_duration_units,          :CNE
      add_field :appointment_timing_quantity,         :TQ
      add_field :placer_contact_person,               :XCN
      add_field :placer_contact_phone_number,         :XTN
      add_field :placer_contact_address,              :XAD
      add_field :placer_contact_location,             :PL
      add_field :filler_contact_person,               :XCN
      add_field :filler_contact_phone_number,         :XTN
      add_field :filler_contact_address,              :XAD
      add_field :filler_contact_location,             :PL
      add_field :entered_by_person,                   :XCN
      add_field :entered_by_phone_number,             :XTN
      add_field :entered_by_location,                 :PL
      add_field :parent_placer_appointment_id,        :EI
      add_field :parent_filler_appointment_id,        :EI
      add_field :filler_status_code,                  :CWE
      add_field :placer_order_number,                 :EI
      add_field :filler_order_number,                 :EI
      add_field :alternate_placer_order_group_number, :EIP
    end
  end
end
