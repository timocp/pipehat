# frozen_string_literal: true

module Pipehat
  module Segment
    # Blood Code
    class BLC < Base
      add_field :blood_product_code, :CWE
      add_field :blood_amount,       :CQ
    end
  end
end
