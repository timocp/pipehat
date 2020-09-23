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

  # required types for this mockup
  #
  # each primitive type is to be defined under Field, Repeat, Component and
  # Subcomponent.  eg the string type wil define:
  #   Field::ST
  #   Repeat::ST
  #   Component::ST
  #   Subcomponent::ST
  #
  # composite types are similar but can't be defined under subcomponents.
  # eg the CX type will define:
  #   Field::CX
  #   Repeat::CX
  #   Component::CX
  #
  # The idea behind this is that an accessor always returns a Node which knows
  # how deep it is in the structure, and has named methods for accessing all
  # its dependents (which is type specific).
  module Field
    # Sequence ID
    class SI < Base
    end

    # String Data
    class ST < Base
    end

    # Coded Value For User-defined Tables
    class IS < Base
    end

    # Coded Value for Hl7 Defined Tables
    class ID < Base
    end

    # Extended Composite Id With Check Digit
    # Named accessors on the field itself assume you mean the first repeat
    class CX < Base
      def id_number
        first.id_number
      end

      def id_number=(value)
        first.id_number = value
      end

      # ...

      def assigning_authority
        first.assigning_authority
      end

      def assigning_authority=(value)
        first.assigning_authority = value
      end
    end

    # Hierarchic Designator
    class HD < Base
      def namespace_id
        first.namespace_id
      end

      def namespace_id=(value)
        first.namespace_id = value
      end

      def universal_id
        first.universal_id
      end

      def universal_id=(value)
        first.universal_id = value
      end

      def universal_id_type
        first.universal_id_type
      end

      def universal_id_type=(value)
        first.universal_id_type = value
      end
    end
  end

  module Repeat
    class SI < Base
    end

    class ST < Base
    end

    class IS < Base
    end

    class ID < Base
    end

    class CX < Base
      def id_number
        component(1, Pipehat::Component::ST)
      end

      def id_number=(value)
        id_number.set(value)
      end

      def assigning_authority
        component(4, Pipehat::Component::HD)
      end

      def assigning_authority=(value)
        assigning_authority.set(value)
      end
    end

    class HD < Base
      def namespace_id
        component(1, Pipehat::Component::IS)
      end

      def namespace_id=(value)
        namespace_id.set(value)
      end

      def universal_id
        component(2, Pipehat::Component::ST)
      end

      def universal_id=(value)
        universal_id.set(value)
      end

      def universal_id_type
        component(3, Pipehat::Component::ID)
      end

      def universal_id_type=(value)
        universal_id_type.set(value)
      end
    end
  end

  module Component
    class SI < Base
    end

    class ST < Base
    end

    class IS < Base
    end

    class ID < Base
    end

    class CX < Base
      def id_number
        subcompoinent(1, Pipehat::Subcomponent::ST)
      end

      def id_number=(value)
        id_number.set(value)
      end

      def assigning_authority
        subcomponent(4, Pipehat::Subcomponent::HD)
      end

      def assigning_authority=(value)
        assigning_authority.set(value)
      end
    end

    class HD < Base
      def namespace_id
        subcomponent(1, Pipehat::Subcomponent::IS)
      end

      def namespace_id=(value)
        namespace_id.set(value)
      end

      def universal_id
        subcomponent(2, Pipehat::Subcomponent::ST)
      end

      def universal_id=(value)
        universal_id.set(value)
      end

      def universal_id_type
        subcomponent(3, Pipehat::Subcomponent::ID)
      end

      def universal_id_type=(value)
        universal_id_type.set(value)
      end
    end
  end

  # only primitive types from here
  module Subcomponent
    class SI < Base
    end

    class ST < Base
    end

    class IS < Base
    end

    class ID < Base
    end
  end
end
