# frozen_string_literal: true

# Practitioner License or Other ID Number
Pipehat.define_type :PLN do
  component :id_number,                           :ST
  component :type_of_id_number,                   :CWE
  component :state_other_qualifying_information,  :ST
  component :expiration_date,                     :DT
end
