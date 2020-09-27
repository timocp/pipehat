# frozen_string_literal: true

# Authorization Information
Pipehat.define_type :AUI do
  add_component :authorization_number,  :ST
  add_component :date,                  :DT
  add_component :source,                :ST
end
