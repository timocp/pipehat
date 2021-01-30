# frozen_string_literal: true

module Pipehat
  module Segment
    # Query Identification
    class QID < Base
      add_field :query_tag,          :ST
      add_field :message_query_name, :CWE
    end
  end
end
