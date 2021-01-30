# frozen_string_literal: true

module Pipehat
  module Segment
    # Batch Trailer
    class BTS < Base
      add_field :batch_message_count, :ST
      add_field :batch_comment,       :ST
      add_field :batch_totals,        :NM
    end
  end
end
