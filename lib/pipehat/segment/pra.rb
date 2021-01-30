# frozen_string_literal: true

module Pipehat
  module Segment
    # Practitioner Detail
    class PRA < Base
      add_field :primary_key_value,                            :CWE
      add_field :practitioner_group,                           :CWE
      add_field :practitioner_category,                        :CWE
      add_field :provider_billing,                             :ID
      add_field :specialty,                                    :SPD
      add_field :practitioner_id_numbers,                      :PLN
      add_field :privileges,                                   :PIP
      add_field :date_entered_practice,                        :DT
      add_field :institution,                                  :CWE
      add_field :date_left_practice,                           :DT
      add_field :government_reimbursement_billing_eligibility, :CWE
      add_field :set_id,                                       :SI
    end
  end
end
