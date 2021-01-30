# frozen_string_literal: true

module Pipehat
  module Segment
    # Location Charge Code
    class LCC < Base
      add_field :primary_key_value,   :PL
      add_field :location_department, :CWE
      add_field :accommodation_type,  :CWE
      add_field :charge_code,         :CWE
    end
  end
end
