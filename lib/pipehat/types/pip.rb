# frozen_string_literal: true

# Practitioner Institutional Privileges
Pipehat.define_type :PIP do
  add_component :privilege,       :CWE
  add_component :privilege_class, :CWE
  add_component :expiration_date, :DT
  add_component :activation_date, :DT
  add_component :facility,        :EI
end
