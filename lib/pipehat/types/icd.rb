# frozen_string_literal: true

# Insurance Certification Definition
Pipehat.define_type :ICD do
  add_component :certification_patient_type,       :CWE
  add_component :certification_required,           :ID
  add_component :date_time_certification_required, :DTM
end
