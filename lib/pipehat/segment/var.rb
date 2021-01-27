# frozen_string_literal: true

module Pipehat
  module Segment
    # Variance
    class VAR < Base
      add_field :variance_instance_id,      :EI
      add_field :documented_date_time,      :DTM
      add_field :stated_variance_date_time, :DTM
      add_field :variance_originator,       :XCN
      add_field :variance_classification,   :CWE
      add_field :variance_description,      :ST
    end
  end
end
