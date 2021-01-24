# frozen_string_literal: true

module Pipehat
  module Segment
    # Timing/Quantity Relationship
    class TQ2 < Base
      add_field :set_id,                                 :SI
      add_field :sequence_results_flag,                  :ID
      add_field :related_placer_number,                  :EI
      add_field :related_filler_number,                  :EI
      add_field :related_placer_group_number,            :EI
      add_field :sequence_condition_code,                :ID
      add_field :cyclic_entry_exit_indicator,            :ID
      add_field :sequence_condition_time_interval,       :CQ
      add_field :cyclic_group_maximum_number_of_repeats, :NM
      add_field :special_service_request_relationship,   :ID
    end
  end
end
