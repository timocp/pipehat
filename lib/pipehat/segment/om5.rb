# frozen_string_literal: true

module Pipehat
  module Segment
    # Observation Batteries (Sets)
    class OM5 < Base
      add_field :sequence_number,                                           :NM
      add_field :test_observations_included_within_an_ordered_test_battery, :CWE
      add_field :observation_id_suffixes,                                   :ST
    end
  end
end
