# frozen_string_literal: true

# Street Address
Pipehat.define_type :SAD do
  component :street_or_mailing_address, :ST
  component :street_name,               :ST
  component :dwelling_number,           :ST
end
