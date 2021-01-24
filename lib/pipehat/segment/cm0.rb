# frozen_string_literal: true

module Pipehat
  module Segment
    # Clinical Study Master
    class CM0 < Base
      add_field :set_id,                    :SI
      add_field :sponsor_study_id,          :EI
      add_field :alternate_study_id,        :EI
      add_field :title_of_study,            :ST
      add_field :chairman_of_study,         :XCN
      add_field :last_irb_approval_date,    :DT
      add_field :total_accrual_to_date,     :NM
      add_field :last_accrual_date,         :DT
      add_field :contact_for_study,         :XCN
      add_field :contacts_telephone_number, :XTN
      add_field :contacts_address,          :XAD
    end
  end
end
