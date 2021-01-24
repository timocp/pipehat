# frozen_string_literal: true

module Pipehat
  module Segment
    # Pharmacy/Treatment Route
    class RXR < Base
      add_field :route,                        :CWE
      add_field :administration_site,          :CWE
      add_field :administration_device,        :CWE
      add_field :administration_method,        :CWE
      add_field :routing_instruction,          :CWE
      add_field :administration_site_modifier, :CWE
    end
  end
end
