# frozen_string_literal: true

module Pipehat
  module Segment
    # Test Code Configuration
    class TCC < Base
      add_field :universal_service_identifier,               :CWE
      add_field :equipment_test_application_identifier,      :EI
      add_field :specimen_source,                            :SPS
      add_field :auto_dilution_factor_default,               :SN
      add_field :rerun_dilution_factor_default,              :SN
      add_field :pre_dilution_factor_default,                :SN
      add_field :endogenous_content_of_pre_dilution_diluent, :SN
      add_field :inventory_limits_warning_level,             :NM
      add_field :automatic_rerun_allowed,                    :ID
      add_field :automatic_repeat_allowed,                   :ID
      add_field :automatic_reflex_allowed,                   :ID
      add_field :equipment_dynamic_range,                    :SN
      add_field :units,                                      :CWE
      add_field :processing_type,                            :CWE
      add_field :test_criticality,                           :CWE
    end
  end
end
