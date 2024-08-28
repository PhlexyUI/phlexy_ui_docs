module Examples
  module Menus
    class SubmenuComponent < Base
      def title
        "Submenu"
      end

      def example
        Menu :base_200, class: "w-56" do |menu|
          menu.item do
            a do
              "Item 1"
            end
          end

          menu.item do |item|
            a do
              "Parent as link"
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

              submenu.item do |item|
                item.title do
                  "Parent as title"
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
