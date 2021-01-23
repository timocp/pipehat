# frozen_string_literal: true

module Pipehat
  module Segment
    # Notes and Comments
    class NTE < Base
      add_field :set_id,               :SI
      add_field :source_of_comment,    :ID
      add_field :comment,              :FT
      add_field :comment_type,         :CWE
      add_field :entered_by,           :XCN
      add_field :entered_date_time,    :DTM
      add_field :effective_start_date, :DTM
      add_field :expiration_date,      :DTM
      add_field :coded_comment,        :CWE
    end
  end
end
