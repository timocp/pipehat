# frozen_string_literal: true

module Pipehat
  module Segment
    # Specimen
    class SPM < Base
      add_field :set_id,                        :SI
      add_field :specimen_identifier,           :EIP
      add_field :specimen_parent_ids,           :EIP
      add_field :specimen_type,                 :CWE
      add_field :specimen_type_modifier,        :CWE
      add_field :specimen_additives,            :CWE
      add_field :specimen_collection_method,    :CWE
      add_field :specimen_source_site,          :CWE
      add_field :specimen_source_site_modifier, :CWE
      add_field :specimen_collection_site,      :CWE
      add_field :specimen_role,                 :CWE
      add_field :specimen_collection_amount,    :CQ
      add_field :grouped_specimen_count,        :NM
      add_field :specimen_description,          :ST
      add_field :specimen_handling_code,        :CWE
      add_field :specimen_risk_code,            :CWE
      add_field :specimen_collection_date_time, :DR
      add_field :specimen_received_date_time,   :DTM
      add_field :specimen_expiration_date_time, :DTM
      add_field :specimen_availability,         :ID
      add_field :specimen_reject_reason,        :CWE
      add_field :specimen_quality,              :CWE
      add_field :specimen_appropriateness,      :CWE
      add_field :specimen_condition,            :CWE
      add_field :specimen_current_quantity,     :CQ
      add_field :number_of_specimen_containers, :NM
      add_field :container_type,                :CWE
      add_field :container_condition,           :CWE
      add_field :specimen_child_role,           :CWE
      add_field :accession_id,                  :CX
      add_field :other_specimen_id,             :CX
      add_field :shipment_id,                   :EI
      add_field :culture_start_date_time,       :DTM
      add_field :culture_final_date_time,       :DTM
      add_field :action_code,                   :ID
    end
  end
end
