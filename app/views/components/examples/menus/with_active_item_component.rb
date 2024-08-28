module Examples
  module Menus
    class WithActiveItemComponent < Base
      def title
        "With active item"
      end

      def example
        Menu :base_200, class: "w-56" do |menu|
          menu.item do
            a do
              "Item 1"
            end
          end

          menu.item do
            Link :active do
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
