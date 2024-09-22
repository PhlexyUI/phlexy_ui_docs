module Examples
  module Checkboxes
    class SecondaryColorComponent < Base
      def title
        "Secondary color"
      end

      def example
        FormControl class: "w-52" do
          Label class: "cursor-pointer" do |label|
            label.text do
              "Remember me"
            end
            Checkbox :checked, :secondary
          end
        end
      end
    end
  end
end
