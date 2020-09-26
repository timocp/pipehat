# frozen_string_literal: true

# Financial Class
Pipehat.define_type :FC do
  add_component :financial_class_code,  :IS
  add_component :effective_date,        :DTM
end
