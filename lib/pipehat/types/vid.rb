# frozen_string_literal: true

# Version Identifier
Pipehat.define_type :VID do
  add_component :version_id,                :ID
  add_component :internationalization_code, :CWE
  add_component :international_version_id,  :CWE
end
