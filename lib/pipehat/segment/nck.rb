# frozen_string_literal: true

module Pipehat
  module Segment
    # System Clock
    class NCK < Base
      add_field :system_date_time, :DTM
    end
  end
end
