module Examples
  module Checkboxes
    class SuccessColorComponent < Base
      def title
        "Success color"
      end

      def example
        FormControl class: "w-52" do
          Label class: "cursor-pointer" do |label|
            label.text do
              "Remember me"
            end
            Checkbox :checked, :success
          end
        end
      end
    end
  end
end
