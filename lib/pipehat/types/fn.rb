# frozen_string_literal: true

# Family Name
Pipehat.define_type :FN do
  component :surname,                     :ST
  component :own_surname_prefix,          :ST
  component :own_surname,                 :ST
  component :surname_prefix_from_partner, :ST
  component :surname_from_partner,        :ST
end
