# frozen_string_literal: true

module Pipehat
  module Segment
    # Master File Identification
    class MFI < Base
      add_field :master_file_identifier,             :CWE
      add_field :master_file_application_identifier, :HD
      add_field :file_level_event_code,              :ID
      add_field :entered_date_time,                  :DTM
      add_field :effective_date_time,                :DTM
      add_field :response_level_code,                :ID
    end
  end
end
