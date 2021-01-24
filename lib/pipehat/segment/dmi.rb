# frozen_string_literal: true

module Pipehat
  module Segment
    # DRG Master File Information
    class DMI < Base
      add_field :diagnostic_related_group,    :CNE
      add_field :major_diagnostic_category,   :CNE
      add_field :lower_and_upper_trim_points, :NR
      add_field :average_length_of_stay,      :NM
      add_field :relative_weight,             :NM
    end
  end
end
