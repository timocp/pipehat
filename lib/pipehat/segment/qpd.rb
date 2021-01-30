# frozen_string_literal: true

module Pipehat
  module Segment
    # Query Parameter Definition
    class QPD < Base
      add_field :message_query_name, :CWE
      add_field :query_tag,          :ST
      add_field :user_parameters,    :Varies
    end
  end
end
