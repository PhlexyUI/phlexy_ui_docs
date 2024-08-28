module Examples
  module Dropdowns
    class LeftEndComponent < Base
      def title
        "Dropdown left / aligns to end"
      end

      def example
        Dropdown :left, :end do |dropdown|
          dropdown.button :primary, class: "ml-1" do
            "Click"
          end

          dropdown.menu :base_100, class: "rounded-box w-52 shadow" do |menu|
            menu.item do
              a do
                "Item 1"
              end
            end

            menu.item do
              a do
                "Item 1"
              end
            end
          end
        end
      end
    end
  end
end
