# frozen_string_literal: true

module Pipehat
  module Segment
    # Override Segment
    class OVR < Base
      add_field :business_rule_override_type, :CWE
      add_field :business_rule_override_code, :CWE
      add_field :override_comments,           :TX
      add_field :override_entered_by,         :XCN
      add_field :override_authorized_by,      :XCN
    end
  end
end
