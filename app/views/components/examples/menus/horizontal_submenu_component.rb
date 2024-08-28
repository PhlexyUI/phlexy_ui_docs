module Examples
  module Menus
    class HorizontalSubmenuComponent < Base
      def title
        "Horizontal submenu"
      end

      def example
        Menu :horizontal, :base_200 do |menu|
          menu.item do
            a do
              "Item 1"
            end
          end

          menu.item do |item|
            a do
              "Parent"
            end

            item.submenu do |submenu|
              submenu.item do
                a do
                  "Submenu 1"
                end
              end

              submenu.item do
                a do
                  "Submenu 2"
                end
              end
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
