# frozen_string_literal: true

module Pipehat
  module Segment
    # Master File Coverage
    class MCP < Base
      add_field :set_id,                                   :SI
      add_field :producers_service_test_observation_id,    :CWE
      add_field :universal_service_price_range_low_value,  :MO
      add_field :universal_service_price_range_high_value, :MO
      add_field :reason_for_universal_service_cost_range,  :ST
    end
  end
end
