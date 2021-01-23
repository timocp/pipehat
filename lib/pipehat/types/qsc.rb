# frozen_string_literal: true

# Query Selection Criteria
Pipehat.define_type :QSC do
  add_component :segment_field_name,     :ST
  add_component :relational_operator,    :ID
  add_component :value,                  :ST
  add_component :relational_conjunction, :ID
end
