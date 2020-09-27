# frozen_string_literal: true

# Coded Element
Pipehat.define_type :CE do
  add_component :identifier,                      :ST
  add_component :text,                            :ST
  add_component :name_of_coding_system,           :ID
  add_component :alternate_identifier,            :ST
  add_component :alternate_text,                  :ST
  add_component :name_of_alternate_coding_system, :ID
end
