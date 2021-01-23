# frozen_string_literal: true

# Family Name
Pipehat.define_type :FN do
  add_component :surname,                            :ST
  add_component :own_surname_prefix,                 :ST
  add_component :own_surname,                        :ST
  add_component :surname_prefix_from_partner_spouse, :ST
  add_component :surname_from_partner_spouse,        :ST
end
