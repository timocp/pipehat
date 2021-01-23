# frozen_string_literal: true

# Specimen Source
Pipehat.define_type :SPS do
  add_component :specimen_source_name_or_code,    :CWE
  add_component :additives,                       :CWE
  add_component :specimen_collection_method,      :TX
  add_component :body_site,                       :CWE
  add_component :site_modifier,                   :CWE
  add_component :collection_method_modifier_code, :CWE
  add_component :specimen_role,                   :CWE
end
