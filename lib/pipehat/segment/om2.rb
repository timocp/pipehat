# frozen_string_literal: true

module Pipehat
  module Segment
    # Numeric Observation
    class OM2 < Base
      add_field :sequence_number,                                         :NM
      add_field :units_of_measure,                                        :CWE
      add_field :range_of_decimal_precision,                              :NM
      add_field :corresponding_si_units_of_measure,                       :CWE
      add_field :si_conversion_factor,                                    :TX
      add_field :reference_range_for_ordinal_and_continuous_observations, :RFR
      add_field :critical_range_for_ordinal_and_continuous_observations,  :RFR
      add_field :absolute_range_for_ordinal_and_continuous_observations,  :RFR
      add_field :delta_check_criteria,                                    :DLT
      add_field :minimum_meaningful_increments,                           :NM
    end
  end
end
