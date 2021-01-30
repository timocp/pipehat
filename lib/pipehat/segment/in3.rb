# frozen_string_literal: true

module Pipehat
  module Segment
    # Insurance Additional Information, Certification
    class IN3 < Base
      add_field :set_id,                                 :SI
      add_field :certification_number,                   :CX
      add_field :certified_by,                           :XCN
      add_field :certification_required,                 :ID
      add_field :penalty,                                :MOP
      add_field :certification_date_time,                :DTM
      add_field :certification_modify_date_time,         :DTM
      add_field :operator,                               :XCN
      add_field :certification_begin_date,               :DT
      add_field :certification_end_date,                 :DT
      add_field :days,                                   :DTN
      add_field :non_concur_code_description,            :CWE
      add_field :non_concur_effective_date_time,         :DTM
      add_field :physician_reviewer,                     :XCN
      add_field :certification_contact,                  :ST
      add_field :certification_contact_phone_number,     :XTN
      add_field :appeal_reason,                          :CWE
      add_field :certification_agency,                   :CWE
      add_field :certification_agency_phone_number,      :XTN
      add_field :pre_certification_requirement,          :ICD
      add_field :case_manager,                           :ST
      add_field :second_opinion_date,                    :DT
      add_field :second_opinion_status,                  :CWE
      add_field :second_opinion_documentation_received,  :CWE
      add_field :second_opinion_physician,               :XCN
      add_field :certification_type,                     :CWE
      add_field :certification_category,                 :CWE
      add_field :online_verification_date_time,          :DTM
      add_field :online_verification_result,             :CWE
      add_field :online_verification_result_error_code,  :CWE
      add_field :online_verification_result_check_digit, :ST
    end
  end
end
