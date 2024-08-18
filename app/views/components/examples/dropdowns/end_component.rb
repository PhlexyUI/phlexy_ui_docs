module Examples
  module Dropdowns
    class EndComponent < Base
      def title
        "Dropdown / aligns to end"
      end

      def example
        Dropdown :end do |dropdown|
          dropdown.button :primary, class: "mb-1" do
            "Click"
          end

          dropdown.menu class: "bg-base-100 rounded-box w-52 shadow" do |menu|
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
