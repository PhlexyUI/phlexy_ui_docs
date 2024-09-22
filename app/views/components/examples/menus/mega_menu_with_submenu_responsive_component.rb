module Examples
  module Menus
    class MegaMenuWithSubmenuResponsiveComponent < Base
      def title
        "Mega menu with submenu (responsive)"
      end

      def example
        Menu :base_200, responsive: {lg: :horizontal}, class: "rounded-box lg:min-w-max" do |menu|
          menu.item do |item|
            a do
              "Solutions"
            end

            item.submenu do |submenu|
              submenu.item do
                a do
                  "Design"
                end
              end

              submenu.item do
                a do
                  "Development"
                end
              end

              submenu.item do
                a do
                  "Hosting"
                end
              end

              submenu.item do
                a do
                  "Domain register"
                end
              end
            end
          end

          menu.item do |item|
            a do
              "Enterprise"
            end

            item.submenu do |submenu|
              submenu.item do
                a do
                  "CRM software"
                end
              end

              submenu.item do
                a do
                  "Marketing management"
                end
              end

              submenu.item do
                a do
                  "Security"
                end
              end

              submenu.item do
                a do
                  "Consulting"
                end
              end
            end
          end

          menu.item do |item|
            a do
              "Products"
            end

            item.submenu do |submenu|
              submenu.item do
                a do
                  "UI Kit"
                end
              end

              submenu.item do
                a do
                  "Wordpress themes"
                end
              end

              submenu.item do
                a do
                  "Wordpress plugins"
                end
              end

              submenu.item do |submenu_item|
                a do
                  "Open source"
                end

                submenu_item.submenu do |submenu|
                  submenu.item do
                    a do
                      "Auth management system"
                    end
                  end

                  submenu.item do
                    a do
                      "VScode theme"
                    end
                  end

                  submenu.item do
                    a do
                      "Color picker app"
                    end
                  end
                end
              end
            end
          end

          menu.item do |item|
            a do
              "Company"
            end

            item.submenu do |submenu|
              submenu.item do
                a do
                  "About us"
                end
              end

              submenu.item do
                a do
                  "Contact us"
                end
              end

              submenu.item do
                a do
                  "Privacy policy"
                end
              end

              submenu.item do
                a do
                  "Press kit"
                end
              end
            end
          end
        end
      end
    end
  end
end
