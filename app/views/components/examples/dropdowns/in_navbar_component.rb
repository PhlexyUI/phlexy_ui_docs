module Examples
  module Dropdowns
    class InNavbarComponent < Base
      def title
        "Dropdown in navbar"
      end

      def example
        Navbar class: "bg-base-200 rounded-box" do |navbar|
          div class: "flex-1 px-2 lg:flex-none" do
            a class: "text-lg font-bold" do
              "daisyUI"
            end
          end

          div class: "flex flex-1 items-stretch justify-end px-2" do
            Dropdown :end do |dropdown|
              dropdown.button :ghost, :rounded do
                "Dropdown"
              end

              dropdown.menu :base_100, class: "rounded-box mt-4 w-52 p-2 shadow" do |menu|
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
              end
            end
          end
        end
      end
    end
  end
end
