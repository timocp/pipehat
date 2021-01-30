# frozen_string_literal: true

module Pipehat
  module Segment
    # Application Status Change
    class NSC < Base
      add_field :application_change_type, :CWE
      add_field :current_cpu,             :ST
      add_field :current_fileserver,      :ST
      add_field :current_application,     :HD
      add_field :current_facility,        :HD
      add_field :new_cpu,                 :ST
      add_field :new_fileserver,          :ST
      add_field :new_application,         :HD
      add_field :new_facility,            :HD
    end
  end
end
