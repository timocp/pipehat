# frozen_string_literal: true

# Specialty Description
Pipehat.define_type :SPD do
  add_component :specialty_name,        :ST
  add_component :governing_board,       :ST
  add_component :eligible_or_certified, :ID
  add_component :date_of_certification, :DT
end
