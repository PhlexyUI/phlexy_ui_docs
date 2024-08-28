module Examples
  module Dropdowns
    class BasicComponent < Base
      def title
        "Dropdown menu using <details> tag"
      end

      def subtitle
        "Stays open until gets clicked again. Or you can close it using JS by
        removing the `open` attribute"
      end

      def example
        Dropdown :tap_to_close do |dropdown|
          dropdown.button :primary, class: "mb-1" do
            "Open or close"
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
