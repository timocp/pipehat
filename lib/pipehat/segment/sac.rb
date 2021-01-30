# frozen_string_literal: true

module Pipehat
  module Segment
    # Specimen Container detail
    class SAC < Base
      add_field :external_accession_identifier,         :EI
      add_field :accession_identifier,                  :EI
      add_field :container_identifier,                  :EI
      add_field :primary_parent_container_identifier,   :EI
      add_field :equipment_container_identifier,        :EI
      add_field :specimen_source,                       :SPS
      add_field :registration_date_time,                :DTM
      add_field :container_status,                      :CWE
      add_field :carrier_type,                          :CWE
      add_field :carrier_identifier,                    :EI
      add_field :position_in_carrier,                   :NA
      add_field :tray_type_sac,                         :CWE
      add_field :tray_identifier,                       :EI
      add_field :position_in_tray,                      :NA
      add_field :location,                              :CWE
      add_field :container_height,                      :NM
      add_field :container_diameter,                    :NM
      add_field :barrier_delta,                         :NM
      add_field :bottom_delta,                          :NM
      add_field :container_height_diameter_delta_units, :CWE
      add_field :container_volume,                      :NM
      add_field :available_specimen_volume,             :NM
      add_field :initial_specimen_volume,               :NM
      add_field :volume_units,                          :CWE
      add_field :separator_type,                        :CWE
      add_field :cap_type,                              :CWE
      add_field :additive,                              :CWE
      add_field :specimen_component,                    :CWE
      add_field :dilution_factor,                       :SN
      add_field :treatment,                             :CWE
      add_field :temperature,                           :SN
      add_field :hemolysis_index,                       :NM
      add_field :hemolysis_index_units,                 :CWE
      add_field :lipemia_index,                         :NM
      add_field :lipemia_index_units,                   :CWE
      add_field :icterus_index,                         :NM
      add_field :icterus_index_units,                   :CWE
      add_field :fibrin_index,                          :NM
      add_field :fibrin_index_units,                    :CWE
      add_field :system_induced_contaminants,           :CWE
      add_field :drug_interference,                     :CWE
      add_field :artificial_blood,                      :CWE
      add_field :special_handling_code,                 :CWE
      add_field :other_environmental_factors,           :CWE
      add_field :container_length,                      :CQ
      add_field :container_width,                       :CQ
      add_field :container_form,                        :CWE
      add_field :container_material,                    :CWE
      add_field :container_common_name,                 :CWE
    end
  end
end
