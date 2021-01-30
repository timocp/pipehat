# frozen_string_literal: true

module Pipehat
  module Segment
    # Clear Notification
    class CNS < Base
      add_field :starting_notification_reference_number, :NM
      add_field :ending_notification_reference_number,   :NM
      add_field :starting_notification_date_time,        :DTM
      add_field :ending_notification_date_time,          :DTM
      add_field :starting_notification_code,             :CWE
      add_field :ending_notification_code,               :CWE
    end
  end
end
