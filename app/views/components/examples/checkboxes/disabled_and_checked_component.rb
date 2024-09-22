module Examples
  module Checkboxes
    class DisabledAndCheckedComponent < Base
      def title
        "Disabled and checked"
      end

      def example
        Checkbox :checked, :disabled
      end
    end
  end
end
