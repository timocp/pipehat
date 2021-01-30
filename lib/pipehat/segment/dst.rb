# frozen_string_literal: true

module Pipehat
  module Segment
    # Transport Destination
    class DST < Base
      add_field :destination, :CWE
      add_field :route,       :CWE
    end
  end
end
