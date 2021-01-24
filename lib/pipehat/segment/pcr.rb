# frozen_string_literal: true

module Pipehat
  module Segment
    # Possible Causal Relationship
    class PCR < Base
      add_field :implicated_product,                    :CWE
      add_field :generic_product,                       :IS
      add_field :product_class,                         :CWE
      add_field :total_duration_of_therapy,             :CQ
      add_field :product_manufacture_date,              :DTM
      add_field :product_expiration_date,               :DTM
      add_field :product_implantation_date,             :DTM
      add_field :product_explantation_date,             :DTM
      add_field :single_use_device,                     :CWE
      add_field :indication_for_product_use,            :CWE
      add_field :product_problem,                       :CWE
      add_field :product_serial_lot_number,             :ST
      add_field :product_available_for_inspection,      :CWE
      add_field :product_evaluation_performed,          :CWE
      add_field :product_evaluation_status,             :CWE
      add_field :product_evaluation_results,            :CWE
      add_field :evaluated_product_source,              :ID
      add_field :date_product_returned_to_manufacturer, :DTM
      add_field :device_operator_qualifications,        :ID
      add_field :relatedness_assessment,                :ID
      add_field :action_taken_in_response_to_the_event, :ID
      add_field :event_causality_observations,          :ID
      add_field :indirect_exposure_mechanism,           :ID
    end
  end
end
