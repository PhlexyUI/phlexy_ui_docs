module Examples
  module Checkboxes
    class PrimaryColorComponent < Base
      def title
        "Primary color"
      end

      def example
        FormControl class: "w-52" do
          Label class: "cursor-pointer" do |label|
            label.text do
              "Remember me"
            end
            Checkbox :checked, :primary
          end
        end
      end
    end
  end
end
