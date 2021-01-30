# frozen_string_literal: true

#  Financial Class
Pipehat.define_type :FC do
  add_component :financial_class_code, :CWE
  add_component :effective_date,       :DTM
end
