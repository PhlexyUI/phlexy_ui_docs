module Examples
  module Checkboxes
    class IndeterminateComponent < Base
      def title
        "Indeterminate"
      end

      def subtitle
        "You can make a checkbox indeterminate using JS"
      end

      def example
        Checkbox id: "my_checkbox"

        script do
          <<-JS.html_safe
            document.getElementById("my_checkbox").indeterminate = true
          JS
        end
      end
    end
  end
end
