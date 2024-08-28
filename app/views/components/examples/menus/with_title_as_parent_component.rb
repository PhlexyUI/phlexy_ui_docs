module Examples
  module Menus
    class WithTitleAsParentComponent < Base
      def title
        "Menu with title as a parent"
      end

      def example
        Menu :base_200, class: "w-56" do |menu|
          menu.item do |item|
            item.title do
              "Title"
            end

            item.submenu do |submenu|
              submenu.item do
                a do
                  "Item 1"
                end
              end

              submenu.item do
                a do
                  "Item 2"
                end
              end

              submenu.item do
                a do
                  "Item 3"
                end
              end
            end
          end
        end
      end
    end
  end
end
