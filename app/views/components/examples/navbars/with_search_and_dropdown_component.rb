module Examples
  module Navbars
    class WithSearchAndDropdownComponent < Base
      include Phlex::Rails::Helpers::ImageTag

      def title
        "Navbar with search input and dropdown"
      end

      def example
        Navbar :base_100, class: "shadow-xl rounded-box" do |navbar|
          navbar.start do
            Button :ghost, class: "text-xl" do
              "daisyUI"
            end
          end

          navbar.end class: "gap-2" do
            FormControl do
              input type: "text", placeholder: "Search", class: "input input-bordered w-24 md:w-auto"
            end

            Dropdown :end do |dropdown|
              dropdown.button :ghost, :circle, class: "avatar" do
                div class: "w-10 rounded-full" do
                  img src:, alt: "Tailwind CSS Navbar component"
                end
              end

              dropdown.menu :base_100, :sm, class: "rounded-box z-[1] mt-3 w-52 p-2 shadow" do |menu|
                menu.item do
                  Link class: "justify-between" do
                    plain "Profile"
                    Badge :secondary do
                      "New"
                    end
                  end
                end
                menu.item do
                  Link do
                    "Settings"
                  end
                end
                menu.item do
                  Link do
                    "Logout"
                  end
                end
              end
            end
          end
        end
      end

      private

      def src
        image_tag("person_4.webp")
      end
    end
  end
end
