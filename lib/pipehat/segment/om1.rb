# frozen_string_literal: true

module Pipehat
  module Segment
    # General Segment
    class OM1 < Base
      add_field :sequence_number,                                                              :NM
      add_field :producers_service_test_observation_id,                                        :CWE
      add_field :permitted_data_types,                                                         :ID
      add_field :specimen_required,                                                            :ID
      add_field :producer_id,                                                                  :CWE
      add_field :observation_description,                                                      :TX
      add_field :other_service_test_observation_ids_for_the_observation,                       :CWE
      add_field :other_names,                                                                  :ST
      add_field :preferred_report_name_for_the_observation,                                    :ST
      add_field :preferred_short_name_or_mnemonic_for_the_observation,                         :ST
      add_field :preferred_long_name_for_the_observation,                                      :ST
      add_field :orderability,                                                                 :ID
      add_field :identity_of_instrument_used_to_perform_this_study,                            :CWE
      add_field :coded_representation_of_method,                                               :CWE
      add_field :portable_device_indicator,                                                    :ID
      add_field :observation_producing_department_section,                                     :CWE
      add_field :telephone_number_of_section,                                                  :XTN
      add_field :nature_of_service_test_observation,                                           :CWE
      add_field :report_subheader,                                                             :CWE
      add_field :report_display_order,                                                         :ST
      add_field :date_time_stamp_for_any_change_in_definition_for_the_observation,             :DTM
      add_field :effective_date_time_of_change,                                                :DTM
      add_field :typical_turn_around_time,                                                     :NM
      add_field :processing_time,                                                              :NM
      add_field :processing_priority,                                                          :ID
      add_field :reporting_priority,                                                           :ID
      add_field :outside_sites_where_observation_may_be_performed,                             :CWE
      add_field :address_of_outside_site,                                                      :XAD
      add_field :phone_number_of_outside_site,                                                 :XTN
      add_field :confidentiality_code,                                                         :CWE
      add_field :observations_required_to_interpret_this_observation,                          :CWE
      add_field :interpretation_of_observations,                                               :TX
      add_field :contraindications_to_observations,                                            :CWE
      add_field :reflex_tests_observations,                                                    :CWE
      add_field :rules_that_trigger_reflex_testing,                                            :TX
      add_field :fixed_canned_message,                                                         :CWE
      add_field :patient_preparation,                                                          :TX
      add_field :procedure_medication,                                                         :CWE
      add_field :factors_that_may_affect_the_observation,                                      :TX
      add_field :service_test_observation_performance_schedule,                                :ST
      add_field :description_of_test_methods,                                                  :TX
      add_field :kind_of_quantity_observed,                                                    :CWE
      add_field :point_versus_interval,                                                        :CWE
      add_field :challenge_information,                                                        :TX
      add_field :relationship_modifier,                                                        :CWE
      add_field :target_anatomic_site_of_test,                                                 :CWE
      add_field :modality_of_imaging_measurement,                                              :CWE
      add_field :exclusive_test,                                                               :ID
      add_field :diagnostic_serv_sect_id,                                                      :ID
      add_field :taxonomic_classification_code,                                                :CWE
      add_field :other_names_51,                                                               :ST
      add_field :replacement_producers_service_test_observation_id,                            :CWE
      add_field :prior_resuts_instructions,                                                    :TX
      add_field :special_instructions,                                                         :TX
      add_field :test_category,                                                                :CWE
      add_field :observation_identifier_associated_with_producers_service_test_observation_id, :CWE
      add_field :typical_turn_around_time_57,                                                  :CQ
      add_field :gender_restriction,                                                           :CWE
      add_field :age_restriction,                                                              :NR
    end
  end
end
