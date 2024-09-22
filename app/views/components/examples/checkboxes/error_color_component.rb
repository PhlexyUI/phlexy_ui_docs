module Examples
  module Checkboxes
    class ErrorColorComponent < Base
      def title
        "Error color"
      end

      def example
        FormControl class: "w-52" do
          Label class: "cursor-pointer" do |label|
            label.text do
              "Remember me"
            end
            Checkbox :checked, :error
          end
        end
      end
    end
  end
end
