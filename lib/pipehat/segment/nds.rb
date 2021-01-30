# frozen_string_literal: true

module Pipehat
  module Segment
    # Notification Detail
    class NDS < Base
      add_field :notification_reference_number, :NM
      add_field :notification_date_time,        :DTM
      add_field :notification_alert_severity,   :CWE
      add_field :notification_code,             :CWE
    end
  end
end
