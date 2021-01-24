# frozen_string_literal: true

module Pipehat
  module Segment
    # Grouping/Reimbursement - Visit
    class GP1 < Base
      add_field :type_of_bill_code,              :CWE
      add_field :revenue_code,                   :CWE
      add_field :overall_claim_disposition_code, :CWE
      add_field :oce_edits_per_visit_code,       :CWE
      add_field :outlier_cost,                   :CP
    end
  end
end
