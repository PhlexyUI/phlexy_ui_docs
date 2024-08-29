module Examples
  module Menus
    class WithoutPaddingAndBorderRadiusComponent < Base
      def title
        "Menu without padding and border radius"
      end

      def example
        Menu :base_200, class: "w-56 p-0 [&_li>*]:rounded-none" do |menu|
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
