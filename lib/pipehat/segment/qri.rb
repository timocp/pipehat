# frozen_string_literal: true

module Pipehat
  module Segment
    # Query Response Instance
    class QRI < Base
      add_field :candidate_confidence, :NM
      add_field :match_reason_code,    :CWE
      add_field :algorithm_descriptor, :CWE
    end
  end
end
