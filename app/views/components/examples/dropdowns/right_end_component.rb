module Examples
  module Dropdowns
    class RightEndComponent < Base
      def title
        "Dropdown right / aligns to end"
      end

      def example
        Dropdown :right, :end do |dropdown|
          dropdown.button :primary, class: "mr-1" do
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
