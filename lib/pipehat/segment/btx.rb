# frozen_string_literal: true

module Pipehat
  module Segment
    # Blood Product Transfusion/Disposition
    class BTX < Base
      add_field :set_id,                                   :SI
      add_field :bc_donation_id,                           :EI
      add_field :bc_component,                             :CNE
      add_field :bc_blood_group,                           :CNE
      add_field :cp_commercial_product,                    :CWE
      add_field :cp_manufacturer,                          :XON
      add_field :cp_lot_number,                            :EI
      add_field :bp_quantity,                              :NM
      add_field :bp_amount,                                :NM
      add_field :bp_units,                                 :CWE
      add_field :bp_transfusion_disposition_status,        :CWE
      add_field :bp_message_status,                        :ID
      add_field :bp_date_time_of_status,                   :DTM
      add_field :bp_transfusion_administrator,             :XCN
      add_field :bp_transfusion_verifier,                  :XCN
      add_field :bp_transfusion_start_date_time_of_status, :DTM
      add_field :bp_transfusion_end_date_time_of_status,   :DTM
      add_field :bp_adverse_reaction_type,                 :CWE
      add_field :bp_transfusion_interrupted_reason,        :CWE
      add_field :bp_unique_id,                             :EI
      add_field :action_code,                              :ID
    end
  end
end
