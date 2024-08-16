module Examples
  module Buttons
    class DisabledComponent < Base
      def title
        "Disabled buttons"
      end

      def example
        Button disabled: true do
          "Disabled using attribute"
        end

        Button :disabled, tabindex: -1, role: :button, aria_disabled: true do
          "Disabled using class name"
        end
      end
    end
  end
end
