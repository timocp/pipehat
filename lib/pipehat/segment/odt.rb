# frozen_string_literal: true

module Pipehat
  module Segment
    #  Diet Tray Instructions
    class ODT < Base
      add_field :tray_type,        :CWE
      add_field :service_period,   :CWE
      add_field :text_instruction, :ST
    end
  end
end
