module Examples
  module Checkboxes
    class CustomColorsComponent < Base
      def title
        "Checkbox with custom colors"
      end

      def example
        custom_colors_classes_1 = [
          "border-orange-400",
          "[--chkbg:theme(colors.indigo.600)]",
          "[--chkfg:orange]",
          "checked:border-indigo-800"
        ]

        custom_colors_classes_2 = [
          "[--chkbg:oklch(var(--a))]",
          "[--chkfg:oklch(var(--p))]"
        ]

        Checkbox :checked, class: custom_colors_classes_1
        Checkbox :checked, class: custom_colors_classes_2
      end
    end
  end
end
