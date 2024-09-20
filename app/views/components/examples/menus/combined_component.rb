module Examples
  module Menus
    class CombinedComponent < Base
      def title
        "Combined"
      end

      def example
        Menu class: "bg-base-200 w-52" do |menu|
          menu.title do
            "My Menu"
          end

          menu.item :disabled do
            a do
              "Item 1"
            end
          end

          menu.item do |item|
            item.submenu :collapsible, :open do |submenu|
              submenu.title do
                "Parent 1"
              end

              submenu.item do |submenu_item|
                a do
                  "Child 1"
                end
              end

              submenu.item do |submenu_item|
                submenu_item.submenu :collapsible do |submenu_2|
                  submenu_2.title do
                    "Parent 2"
                  end

                  submenu_2.item do
                    a do
                      "Child 2"
                    end
                  end
                end
              end

              submenu.item do |submenu_item|
                submenu_item.submenu do |submenu_2|
                  submenu_2.title do
                    "Parent 3"
                  end

                  submenu_2.item do
                    a do
                      "Child 3"
                    end
                  end
                end
              end
            end
          end

          menu.item do |item|
            item.submenu do |submenu|
              submenu.title do
                "Parent 1"
              end

              submenu.item do
                a do
                  "Child 1"
                end
              end

              submenu.item do |item|
                item.submenu do |submenu_2|
                  submenu_2.title do
                    "Parent 2"
                  end

                  submenu_2.item do
                    a do
                      "Child 2"
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
