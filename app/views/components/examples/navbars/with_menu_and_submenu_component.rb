module Examples
  module Navbars
    class WithMenuAndSubmenuComponent < Base
      def title
        "Navbar with menu and submenu"
      end

      def example
        Navbar :base_100, class: "shadow-xl rounded-box" do |navbar|
          navbar.start do
            Button :ghost, class: "text-xl" do
              "daisyUI"
            end
          end

          navbar.end do
            Menu :horizontal, class: "px-1" do |menu|
              menu.item do
                Link do
                  "Link"
                end
              end

              menu.item do |item|
                item.submenu(
                  :collapsible,
                  :base_100,
                  class: "rounded-t-none p-2"
                ) do |submenu|
                  submenu.title do
                    Link do
                      "Parent"
                    end
                  end

                  submenu.item do
                    Link do
                      "Link 1"
                    end
                  end
                  submenu.item do
                    Link do
                      "Link 2"
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
