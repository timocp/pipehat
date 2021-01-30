# frozen_string_literal: true

module Pipehat
  module Segment
    # Application control level statistics
    class NST < Base
      add_field :statistics_available,             :ID
      add_field :source_identifier,                :ST
      add_field :source_type,                      :ID
      add_field :statistics_start,                 :DTM
      add_field :statistics_end,                   :DTM
      add_field :receive_character_count,          :NM
      add_field :send_character_count,             :NM
      add_field :messages_received,                :NM
      add_field :messages_sent,                    :NM
      add_field :checksum_errors_received,         :NM
      add_field :length_errors_received,           :NM
      add_field :other_errors_received,            :NM
      add_field :connect_timeouts,                 :NM
      add_field :receive_timeouts,                 :NM
      add_field :application_control_level_errors, :NM
    end
  end
end
