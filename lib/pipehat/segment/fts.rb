# frozen_string_literal: true

module Pipehat
  module Segment
    # File Trailer
    class FTS < Base
      add_field :file_batch_count,     :NM
      add_field :file_trailer_comment, :ST
    end
  end
end
