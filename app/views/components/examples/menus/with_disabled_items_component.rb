module Examples
  module Menus
    class WithDisabledItemsComponent < Base
      def title
        "Menu with disabled items"
      end

      def example
        Menu :base_200, class: "rounded-box w-56" do |menu|
          menu.item do
            a do
              "Enabled item"
            end
          end

          menu.item :disabled do
            a do
              "disabled item"
            end
          end

          menu.item :disabled do
            a do
              "disabled item"
            end
          end
        end
      end
    end
  end
end
