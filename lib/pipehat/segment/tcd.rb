# frozen_string_literal: true

module Pipehat
  module Segment
    # Test Code Detail
    class TCD < Base
      add_field :universal_service_identifier,               :CWE
      add_field :auto_dilution_factor,                       :SN
      add_field :rerun_dilution_factor,                      :SN
      add_field :pre_dilution_factor,                        :SN
      add_field :endogenous_content_of_pre_dilution_diluent, :SN
      add_field :automatic_repeat_allowed,                   :ID
      add_field :reflex_allowed,                             :ID
      add_field :analyte_repeat_status,                      :CWE
      add_field :specimen_consumption_quantity,              :CQ
      add_field :pool_size,                                  :NM
      add_field :auto_dilution_type,                         :CWE
    end
  end
end
