module Examples
  module Dropdowns
    class HelperComponent < Base
      def title
        "Helper dropdown"
      end

      def example
        plain "A normal text and a helper dropdown"

        Dropdown :end do |dropdown|
          dropdown.button :circle, :ghost, :xs, class: "text-info" do
            svg_info
          end

          dropdown.content :compact, :base_100, as: Card, class: "rounded-box w-64 shadow" do |card|
            card.body do
              card.title do
                "You needed more info?"
              end

              p do
                "Here is a description!"
              end
            end
          end
        end
      end

      private

      def svg_info
        svg(
          tabindex: "0",
          xmlns: "http://www.w3.org/2000/svg",
          fill: "none",
          viewbox: "0 0 24 24",
          class: "h-4 w-4 stroke-current"
        ) do |s|
          s.path(
            stroke_linecap: "round",
            stroke_linejoin: "round",
            stroke_width: "2",
            d: "M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"
          )
        end
      end
    end
  end
end
