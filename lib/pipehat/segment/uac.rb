# frozen_string_literal: true

module Pipehat
  module Segment
    # User Authentication Credential Segment
    class UAC < Base
      add_field :user_authentication_credential_type_code, :CWE
      add_field :user_authentication_credential,           :ED
    end
  end
end
