# frozen_string_literal: true

# Date and Institution Name
Pipehat.define_type :DIN do
  add_component :date,             :DTM
  add_component :institution_name, :CWE
end
