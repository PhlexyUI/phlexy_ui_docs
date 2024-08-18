module Examples
  module Dropdowns
    class ForceOpenComponent < Base
      def title
        "Force open"
      end

      def example
        Dropdown :open do |dropdown|
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
