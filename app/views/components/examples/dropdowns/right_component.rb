module Examples
  module Dropdowns
    class RightComponent < Base
      def title
        "Dropdown right"
      end

      def example
        Dropdown :right do |dropdown|
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
