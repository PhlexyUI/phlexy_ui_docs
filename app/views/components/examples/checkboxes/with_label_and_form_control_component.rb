module Examples
  module Checkboxes
    class WithLabelAndFormControlComponent < Base
      def title
        "With label and form-control"
      end

      def example
        FormControl class: "w-52" do
          Label class: "cursor-pointer" do |label|
            label.text do
              "Remember me"
            end
            Checkbox :checked
          end
        end
      end
    end
  end
end
