# frozen_string_literal: true

module Pipehat
  module Segment
    # Equipment Command
    class ECD < Base
      add_field :reference_command_number,  :NM
      add_field :remote_control_command,    :CWE
      add_field :response_required,         :ID
      add_field :requested_completion_time, :TQ
      add_field :parameters,                :TX
    end
  end
end
