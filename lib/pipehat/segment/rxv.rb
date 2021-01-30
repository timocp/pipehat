# frozen_string_literal: true

module Pipehat
  module Segment
    # Pharmacy/Treatment Infusion
    class RXV < Base
      add_field :set_id,                       :SI
      add_field :bolus_type,                   :ID
      add_field :bolus_dose_amount,            :NM
      add_field :bolus_dose_amount_units,      :CWE
      add_field :bolus_dose_volume,            :NM
      add_field :bolus_dose_volume_units,      :CWE
      add_field :pca_type,                     :ID
      add_field :pca_dose_amount,              :NM
      add_field :pca_dose_amount_units,        :CWE
      add_field :pca_dose_amount_volume,       :NM
      add_field :pca_dose_amount_volume_units, :CWE
      add_field :max_dose_amount,              :NM
      add_field :max_dose_amount_units,        :CWE
      add_field :max_dose_amount_volume,       :NM
      add_field :max_dose_amount_volume_units, :CWE
      add_field :max_dose_per_time,            :CQ
      add_field :lockout_interval,             :CQ
      add_field :syringe_manufacturer,         :CWE
      add_field :syringe_model_number,         :CWE
      add_field :syringe_size,                 :NM
      add_field :syringe_size_units,           :CWE
      add_field :action_code,                  :ID
    end
  end
end
