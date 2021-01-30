# frozen_string_literal: true

module Pipehat
  module Segment
    # Segment Group Trailer
    class SGT < Base
      add_field :set_id_sgt,         :SI
      add_field :segment_group_name, :ST
    end
  end
end
