# frozen_string_literal: true

module Pipehat
  module Segment
    # Diagnosis and Procedure Code
    class DPS < Base
      add_field :diagnosis_code,       :CWE
      add_field :procedure_code,       :CWE
      add_field :effective_date_time,  :DTM
      add_field :expiration_date_time, :DTM
      add_field :type_of_limitation,   :CNE
    end
  end
end
