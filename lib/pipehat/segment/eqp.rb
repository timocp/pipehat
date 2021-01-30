# frozen_string_literal: true

module Pipehat
  module Segment
    # Equipment/log Service
    class EQP < Base
      add_field :event_type,       :CWE
      add_field :file_name,        :ST
      add_field :start_date_time,  :DTM
      add_field :end_date_time,    :DTM
      add_field :transaction_data, :FT
    end
  end
end
