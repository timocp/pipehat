# frozen_string_literal: true

module Pipehat
  module Segment
    # Table Row Definition
    class RDF < Base
      add_field :number_of_columns_per_row, :NM
      add_field :column_description,        :RCD
    end
  end
end
