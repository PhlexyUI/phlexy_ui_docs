module Examples
  module Checkboxes
    class AccentColorComponent < Base
      def title
        "Accent color"
      end

      def example
        FormControl class: "w-52" do
          Label class: "cursor-pointer" do |label|
            label.text do
              "Remember me"
            end
            Checkbox :checked, :accent
          end
        end
      end
    end
  end
end
