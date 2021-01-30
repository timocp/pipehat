# frozen_string_literal: true

module Pipehat
  module Segment
    # Supporting Clinical Information
    class OMC < Base
      add_field :sequence_number,               :NM
      add_field :segment_action_code,           :ID
      add_field :segment_unique_key,            :EI
      add_field :clinical_information_request,  :CWE
      add_field :collection_event_process_step, :CWE
      add_field :communication_location,        :CWE
      add_field :answer_required,               :ID
      add_field :hint_help_text,                :ST
      add_field :type_of_answer,                :ID
      add_field :multiple_answers_allowed,      :ID
      add_field :answer_choices,                :CWE
      add_field :character_limit,               :NM
      add_field :number_of_decimals,            :NM
    end
  end
end
