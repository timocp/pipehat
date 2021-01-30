# frozen_string_literal: true

module Pipehat
  module Segment
    # Educational Detail
    class EDU < Base
      add_field :set_id,                                           :SI
      add_field :academic_degree,                                  :CWE
      add_field :academic_degree_program_date_range,               :DR
      add_field :academic_degree_program_participation_date_range, :DR
      add_field :academic_degree_granted_date,                     :DT
      add_field :school,                                           :XON
      add_field :school_type_code,                                 :CWE
      add_field :school_address,                                   :XAD
      add_field :major_field_of_study,                             :CWE
    end
  end
end
