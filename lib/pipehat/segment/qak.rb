# frozen_string_literal: true

module Pipehat
  module Segment
    # Query Acknowledgment
    class QAK < Base
      add_field :query_tag,             :ST
      add_field :query_response_status, :ID
      add_field :message_query_name,    :CWE
      add_field :hit_count_total,       :NM
      add_field :this_payload,          :NM
      add_field :hits_remaining,        :NM
    end
  end
end
