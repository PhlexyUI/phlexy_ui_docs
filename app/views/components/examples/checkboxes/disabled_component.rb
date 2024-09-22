module Examples
  module Checkboxes
    class DisabledComponent < Base
      def title
        "Disabled"
      end

      def example
        Checkbox :disabled
      end
    end
  end
end
