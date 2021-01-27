# frozen_string_literal: true

module Pipehat
  module Segment
    # Transcription Document Header
    class TXA < Base
      add_field :set_id,                              :SI
      add_field :document_type,                       :CWE
      add_field :document_content_presentation,       :ID
      add_field :activity_date_time,                  :DTM
      add_field :primary_activity_provider_code_name, :XCN
      add_field :origination_date_time,               :DTM
      add_field :transcription_date_time,             :DTM
      add_field :edit_date_time,                      :DTM
      add_field :originator_code_name,                :XCN
      add_field :assigned_document_authenticator,     :XCN
      add_field :transcriptionist_code_name,          :XCN
      add_field :unique_document_number,              :EI
      add_field :parent_document_number,              :EI
      add_field :placer_order_number,                 :EI
      add_field :filler_order_number,                 :EI
      add_field :unique_document_file_name,           :ST
      add_field :document_completion_status,          :ID
      add_field :document_confidentiality_status,     :ID
      add_field :document_availability_status,        :ID
      add_field :document_storage_status,             :ID
      add_field :document_change_reason,              :ST
      add_field :authentication_person_time_stamp,    :PPN
      add_field :distributed_copies,                  :XCN
      add_field :folder_assignment,                   :CWE
      add_field :document_title,                      :ST
      add_field :agreed_due_date_time,                :DTM
      add_field :creating_facility,                   :HD
      add_field :creating_specialty,                  :CWE
    end
  end
end
