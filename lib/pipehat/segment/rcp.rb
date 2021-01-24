# frozen_string_literal: true

module Pipehat
  module Segment
    # Response Control Parameter
    class RCP < Base
      add_field :query_priority,              :ID
      add_field :quantity_limited_request,    :CQ
      add_field :response_modality,           :CNE
      add_field :execution_and_delivery_time, :DTM
      add_field :modify_indicator,            :ID
      add_field :sort_by_field,               :SRT
      add_field :segment_group_inclusion,     :ID
    end
  end
end
