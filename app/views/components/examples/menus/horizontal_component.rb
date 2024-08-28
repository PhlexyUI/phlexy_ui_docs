module Examples
  module Menus
    class HorizontalComponent < Base
      def title
        "Horizontal menu"
      end

      def example
        Menu :horizontal, :base_200 do |menu|
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
