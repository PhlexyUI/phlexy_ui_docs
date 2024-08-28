module Examples
  module Menus
    class CollapsibleSubMenuComponent < Base
      def title
        "Collapsible submenu"
      end

      def example
        Menu :base_200, class: "rounded-box w-56" do |menu|
          menu.item do
            a do
              "Item 1"
            end
          end

          menu.item do |item|
            item.submenu :collapsible, :open do |submenu|
              submenu.title do
                "Parent"
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
                      "Submenu 1"
                    end
                  end

                  submenu_2.item do
                    a do
                      "Submenu 2"
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
