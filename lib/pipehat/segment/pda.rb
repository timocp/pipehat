# frozen_string_literal: true

module Pipehat
  module Segment
    # Patient Death and Autopsy
    class PDA < Base
      add_field :death_cause_code,                   :CWE
      add_field :death_location,                     :PL
      add_field :death_certified_indicator,          :ID
      add_field :death_certificate_signed_date_time, :DTM
      add_field :death_certified_by,                 :XCN
      add_field :autopsy_indicator,                  :ID
      add_field :autopsy_start_and_end_date_time,    :DR
      add_field :autopsy_performed_by,               :XCN
      add_field :coroner_indicator,                  :ID
    end
  end
end
