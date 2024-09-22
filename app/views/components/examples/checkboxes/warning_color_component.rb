module Examples
  module Checkboxes
    class WarningColorComponent < Base
      def title
        "Warning color"
      end

      def example
        FormControl class: "w-52" do
          Label class: "cursor-pointer" do |label|
            label.text do
              "Remember me"
            end
            Checkbox :checked, :warning
          end
        end
      end
    end
  end
end
