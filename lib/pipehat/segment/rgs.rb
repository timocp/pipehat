# frozen_string_literal: true

module Pipehat
  module Segment
    # Resource Group
    class RGS < Base
      add_field :set_id,              :SI
      add_field :segment_action_code, :ID
      add_field :resource_group_id,   :CWE
    end
  end
end
