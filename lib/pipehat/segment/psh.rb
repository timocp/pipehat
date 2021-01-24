# frozen_string_literal: true

module Pipehat
  module Segment
    # Product Summary Header
    class PSH < Base
      add_field :report_type,                                               :ST
      add_field :report_form_identifier,                                    :ST
      add_field :report_date,                                               :DTM
      add_field :report_interval_start_date,                                :DTM
      add_field :report_interval_end_date,                                  :DTM
      add_field :quantity_manufactured,                                     :CQ
      add_field :quantity_distributed,                                      :CQ
      add_field :quantity_distributed_method,                               :ID
      add_field :quantity_distributed_comment,                              :FT
      add_field :quantity_in_use,                                           :CQ
      add_field :quantity_in_use_method,                                    :ID
      add_field :quantity_in_use_comment,                                   :FT
      add_field :number_of_product_experience_reports_filed_by_facility,    :NM
      add_field :number_of_product_experience_reports_filed_by_distributor, :NM
    end
  end
end
