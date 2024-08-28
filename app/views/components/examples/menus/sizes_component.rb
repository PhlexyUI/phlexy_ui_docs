module Examples
  module Menus
    class SizesComponent < Base
      def title
        "Menu sizes"
      end

      def example
        Menu :xs, :base_200, class: "rounded-box w-56" do |menu|
          menu.item do
            a do
              "xs item 1"
            end
          end

          menu.item do
            a do
              "xs item 2"
            end
          end
        end

        Menu :sm, :base_200, class: "rounded-box w-56" do |menu|
          menu.item do
            a do
              "sm item 1"
            end
          end

          menu.item do
            a do
              "sm item 2"
            end
          end
        end

        Menu :md, :base_200, class: "rounded-box w-56" do |menu|
          menu.item do
            a do
              "md item 1"
            end
          end

          menu.item do
            a do
              "md item 2"
            end
          end
        end

        Menu :lg, :base_200, class: "rounded-box w-56" do |menu|
          menu.item do
            a do
              "lg item 1"
            end
          end

          menu.item do
            a do
              "lg item 2"
            end
          end
        end
      end
    end
  end
end
