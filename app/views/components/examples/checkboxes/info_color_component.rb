module Examples
  module Checkboxes
    class InfoColorComponent < Base
      def title
        "Info color"
      end

      def example
        FormControl class: "w-52" do
          Label class: "cursor-pointer" do |label|
            label.text do
              "Remember me"
            end
            Checkbox :checked, :info
          end
        end
      end
    end
  end
end
