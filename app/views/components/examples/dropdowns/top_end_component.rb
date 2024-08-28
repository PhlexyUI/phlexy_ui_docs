module Examples
  module Dropdowns
    class TopEndComponent < Base
      def title
        "Dropdown top / aligns to end"
      end

      def example
        Dropdown :top, :end do |dropdown|
          dropdown.button :primary, class: "mt-1" do
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
