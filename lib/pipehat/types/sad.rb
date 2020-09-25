# frozen_string_literal: true

# Street Address
Pipehat.define_type :SAD do
  add_component :street_or_mailing_address, :ST
  add_component :street_name,               :ST
  add_component :dwelling_number,           :ST
end
