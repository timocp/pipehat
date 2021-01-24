# frozen_string_literal: true

module Pipehat
  module Segment
    # Requisition Detail
    class RQD < Base
      add_field :requisition_line_number,     :SI
      add_field :item_code_internal,          :CWE
      add_field :item_code_externa,           :CWE
      add_field :hospital_item_code,          :CWE
      add_field :requisition_quantity,        :NM
      add_field :requisition_unit_of_measure, :CWE
      add_field :cost_center_account_number,  :CX
      add_field :item_natural_account_code,   :CWE
      add_field :deliver_to_id,               :CWE
      add_field :date_needed,                 :DT
    end
  end
end
