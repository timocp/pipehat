# frozen_string_literal: true

module Pipehat
  module Segment
    # Substance Identifier
    class SID < Base
      add_field :application_method_identifier,     :CWE
      add_field :substance_lot_number,              :ST
      add_field :substance_container_identifier,    :ST
      add_field :substance_manufacturer_identifier, :CWE
    end
  end
end
