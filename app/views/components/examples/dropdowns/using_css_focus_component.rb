module Examples
  module Dropdowns
    class UsingCssFocusComponent < Base
      def title
        "Dropdown menu"
      end

      def subtitle
        "Click outside to close"
      end

      def example
        Dropdown do |dropdown|
          dropdown.button :primary, class: "mb-1" do
            "Click to open"
          end

          dropdown.menu :base_100, class: "rounded-box w-52 shadow" do |menu|
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
