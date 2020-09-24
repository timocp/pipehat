# frozen_string_literal: true

# Version Identifier
Pipehat.define_type :VID do
  component :version_id,                :ID
  component :internationalization_code, :CWE
  component :international_version_id,  :CWE
end
