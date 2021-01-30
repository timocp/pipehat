# frozen_string_literal: true

# Sort Order
Pipehat.define_type :SRT do
  add_component :sort_by_field, :ST
  add_component :sequencing,    :ID
end
