# frozen_string_literal: true

module Pipehat
  module Segment
    # Interaction Status Detail
    class ISD < Base
      add_field :reference_interaction_number, :NM
      add_field :interaction_type_identifier,  :CWE
      add_field :interaction_active_state,     :CWE
    end
  end
end
