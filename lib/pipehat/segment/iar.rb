# frozen_string_literal: true

module Pipehat
  module Segment
    # Allergy Reaction
    class IAR < Base
      add_field :allergy_reaction_code,               :CWE
      add_field :allergy_severity_code,               :CWE
      add_field :sensitivity_to_causative_agent_code, :CWE
      add_field :management,                          :ST
    end
  end
end
