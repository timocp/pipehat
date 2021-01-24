# frozen_string_literal: true

module Pipehat
  module Segment
    # Billing
    class BLG < Base
      add_field :when_to_charge,     :CCD
      add_field :charge_type,        :ID
      add_field :account_id,         :CX
      add_field :charge_type_reason, :CWE
    end
  end
end
