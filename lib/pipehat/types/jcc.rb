# frozen_string_literal: true

# Job Code/Class
Pipehat.define_type :JCC do
  add_component :job_code,             :CWE
  add_component :job_class,            :CWE
  add_component :job_description_text, :TX
end
