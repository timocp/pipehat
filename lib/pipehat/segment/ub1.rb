# frozen_string_literal: true

module Pipehat
  module Segment
    # Uniform Billing Data 1
    class UB1 < Base
      add_field :set_id,                     :SI
      add_field :blood_deductible,           :NM
      add_field :blood_furnished_pints,      :NM
      add_field :blood_replaced_pints,       :NM
      add_field :blood_not_replaced_pints,   :NM
      add_field :co_insurance_days,          :NM
      add_field :condition_code,             :IS
      add_field :covered_days,               :NM
      add_field :non_covered_days,           :NM
      add_field :value_amount_code,          :CM
      add_field :number_of_grace_days,       :NM
      add_field :special_program_indicator,  :CE
      add_field :psro_ur_approval_indicator, :CE
      add_field :psro_ur_approved_stay_fm,   :DT
      add_field :psro_ur_approved_stay_to,   :DT
      add_field :occurrence,                 :CM
      add_field :occurrence_span,            :CE
      add_field :occur_span_start_date,      :DT
      add_field :occur_span_end_date,        :DT
      add_field :ub_82_locator_2,            :ST
      add_field :ub_82_locator_9,            :ST
      add_field :ub_82_locator_27,           :ST
      add_field :ub_82_locator_45,           :ST
    end
  end
end
