# frozen_string_literal: true

module Pipehat
  module Segment
    # Dietary Orders, Supplements, and Preferences
    class ODS < Base
      add_field :type,                               :ID
      add_field :service_period,                     :CWE
      add_field :diet_supplement_or_preference_code, :CWE
      add_field :text_instruction,                   :ST
    end
  end
end
