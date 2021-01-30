# frozen_string_literal: true

module Pipehat
  module Segment
    # Observations that Require Specimens
    class OM4 < Base
      add_field :sequence_number,                           :NM
      add_field :derived_specimen,                          :ID
      add_field :container_description,                     :TX
      add_field :container_volume,                          :NM
      add_field :container_units,                           :CWE
      add_field :specimen,                                  :CWE
      add_field :additive,                                  :CWE
      add_field :preparation,                               :TX
      add_field :special_handling_requirements,             :TX
      add_field :normal_collection_volume,                  :CQ
      add_field :minimum_collection_volume,                 :CQ
      add_field :specimen_requirements,                     :TX
      add_field :specimen_priorities,                       :ID
      add_field :specimen_retention_time,                   :CQ
      add_field :specimen_handling_code,                    :CWE
      add_field :specimen_preference,                       :ID
      add_field :preferred_specimen_attribture_sequence_id, :NM
      add_field :taxonomic_classification_code,             :CWE
    end
  end
end
