# frozen_string_literal: true

module Pipehat
  module Segment
    #  Segment Group Header
    class SGH < Base
      add_field :set_id_sgh,         :SI
      add_field :segment_group_name, :ST
    end
  end
end
