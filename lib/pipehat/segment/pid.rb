# frozen_string_literal: true

# Experimental non-meta mock-up of the named field/typed classes
# Only need up to PID-3 to see all structure

module Pipehat
  module Segment
    class PID < Base
      def initialize(string = "PID", parser: Pipehat::DEFAULT_PARSER)
        super
      end

      # Named accessors on a segment return a subclass of Pipehat::Field::Base

      # PID-1 Set Id (SI, optional, no repeats)
      def set_id
        field(1, Pipehat::Field::SI)
      end

      def set_id=(value)
        set_id.set(value)
      end

      # PID-2 Patient Id (ST, withdrawn, no repeats)
      def patient_id
        field(2, Pipehat::Field::ST)
      end

      def patient_id=(value)
        patient_id.set(value)
      end

      # PID-3 Patient Identifier List (CX, required, infinite repeats)
      def patient_identifier_list
        field(3, Pipehat::Field::CX)
      end

      def patient_identifier_list=(value)
        patient_identifier_list.set(value)
      end
    end
  end
end
