module Examples
  module Menus
    class ResponsiveComponent < Base
      def title
        "Responsive: vertical on small screen, horizontal on large screen"
      end

      def example
        Menu :base_200, :vertical, responsive: {lg: :horizontal}, class: "rounded-box" do |menu|
          menu.item do
            a do
              "Item 1"
            end
          end

          menu.item do
            a do
              "Item 2"
            end
          end

          menu.item do
            a do
              "Item 3"
            end
          end
        end
      end
    end
  end
end
