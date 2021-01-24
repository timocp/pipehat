# frozen_string_literal: true

module Pipehat
  module Segment
    # Categorical Service/Test/Observation
    class OM3 < Base
      add_field :sequence_number,                                  :NM
      add_field :preferred_coding_system,                          :CWE
      add_field :valid_coded_answers,                              :CWE
      add_field :normal_text_codes_for_categorical_observations,   :CWE
      add_field :abnormal_text_codes_for_categorical_observations, :CWE
      add_field :critical_text_codes_for_categorical_observations, :CWE
      add_field :value_type,                                       :ID
    end
  end
end
