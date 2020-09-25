# frozen_string_literal: true

# Practitioner License or Other ID Number
Pipehat.define_type :PLN do
  add_component :id_number,                           :ST
  add_component :type_of_id_number,                   :CWE
  add_component :state_other_qualifying_information,  :ST
  add_component :expiration_date,                     :DT
end
