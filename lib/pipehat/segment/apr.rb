# frozen_string_literal: true

module Pipehat
  module Segment
    # Appointment Preferences
    class APR < Base
      add_field :time_selection_criteria,     :SCV
      add_field :resource_selection_criteria, :SCV
      add_field :location_selection_criteria, :SCV
      add_field :slot_spacing_criteria,       :NM
      add_field :filler_override_criteria,    :SCV
    end
  end
end
