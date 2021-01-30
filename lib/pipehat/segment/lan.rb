# frozen_string_literal: true

module Pipehat
  module Segment
    # Language Detail
    class LAN < Base
      add_field :set_id,                    :SI
      add_field :language_code,             :CWE
      add_field :language_ability_code,     :CWE
      add_field :language_proficiency_code, :CWE
    end
  end
end
