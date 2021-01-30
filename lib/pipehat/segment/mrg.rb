# frozen_string_literal: true

module Pipehat
  module Segment
    # Merge Patient Information
    class MRG < Base
      add_field :prior_patient_identifier_list, :CX
      add_field :prior_alternate_patient_id,    :CX
      add_field :prior_patient_account_number,  :CX
      add_field :prior_patient_id,              :CX
      add_field :prior_visit_number,            :CX
      add_field :prior_alternate_visit_id,      :CX
      add_field :prior_patient_name,            :XPN
    end
  end
end
