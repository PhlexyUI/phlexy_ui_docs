module Examples
  module Menus
    class BasicComponent < Base
      def title
        "Menu"
      end

      def example
        Menu :base_200, class: "rounded-box w-56" do |menu|
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
