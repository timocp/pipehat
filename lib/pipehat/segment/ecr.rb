# frozen_string_literal: true

module Pipehat
  module Segment
    # Equipment Command Response
    class ECR < Base
      add_field :command_response,            :CWE
      add_field :date_time_completed,         :DTM
      add_field :command_response_parameters, :TX
    end
  end
end
