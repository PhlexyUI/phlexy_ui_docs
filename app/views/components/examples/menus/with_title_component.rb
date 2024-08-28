module Examples
  module Menus
    class WithTitleComponent < Base
      def title
        "Menu with title"
      end

      def example
        Menu :base_200, class: "w-56" do |menu|
          menu.title do
            "Title"
          end

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
