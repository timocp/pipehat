# frozen_string_literal: true

module Pipehat
  module Segment
    # Patient Allergy Information
    class AL1 < Base
      add_field :set_id,                :SI
      add_field :allergen_type_code,    :CE
      add_field :allergen_code,         :CE
      add_field :allergy_severity_code, :CE
      add_field :allergy_reaction_code, :ST
      add_field :identification_date,   :DT
    end
  end
end
