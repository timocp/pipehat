# frozen_string_literal: true

module Pipehat
  module Segment
    #  Imaging Procedure Control Segment
    class IPC < Base
      add_field :accession_identifier,              :EI
      add_field :requested_procedure_id,            :EI
      add_field :study_instance_uid,                :EI
      add_field :scheduled_procedure_step_id,       :EI
      add_field :modality,                          :CWE
      add_field :protocol_code,                     :CWE
      add_field :scheduled_station_name,            :EI
      add_field :scheduled_procedure_step_location, :CWE
      add_field :scheduled_station_ae_title,        :ST
      add_field :action_code,                       :ID
    end
  end
end
