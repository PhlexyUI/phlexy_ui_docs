module Examples
  module Menus
    class CollapsibleWithSubmenuResponsive < Base
      def title
        "Collapsible with submenu (responsive)"
      end

      def example
        Menu :base_200, responsive: {lg: :horizontal}, class: "rounded-box lg:mb-64" do |menu|
          menu.item do
            a do
              "Item 1"
            end
          end

          menu.item do |item|
            item.submenu :collapsible, :open do |submenu|
              submenu.title do
                "Parent item"
              end

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

              submenu.item do |submenu_item|
                submenu_item.submenu :collapsible, :open do |submenu_2|
                  submenu_2.title do
                    "Parent"
                  end

                  submenu_2.item do
                    a do
                      "item 1"
                    end
                  end

                  submenu_2.item do
                    a do
                      "item 2"
                    end
                  end
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
