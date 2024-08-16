module Examples
  module Buttons
    class WithDifferentHtmlTagsComponent < Base
      def title
        "Buttons with different HTML tags"
      end

      def example
        Button as: :a, role: :button do
          "Link"
        end

        Button type: :submit do
          "Button"
        end

        Button as: :input, type: :button, value: "Input"
        Button as: :input, type: :submit, value: "Submit"
        Button as: :input, type: :radio, aria_label: "Radio"
        Button as: :input, type: :checkbox, aria_label: "Checkbox"
        Button as: :input, type: :reset, value: "Reset"
      end
    end
  end
end
