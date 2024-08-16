module Examples
  module Buttons
    class IconAtEndComponent < Base
      def title
        "Icon at end"
      end

      def example
        Button do
          plain "Button"
          heart_svg
        end
      end

      private

      def heart_svg
        svg(
          xmlns: "http://www.w3.org/2000/svg",
          class: "h-6 w-6",
          fill: "none",
          viewbox: "0 0 24 24",
          stroke: "currentColor"
        ) do |s|
          s.path(
            stroke_linecap: "round",
            stroke_linejoin: "round",
            stroke_width: "2",
            d:
              "M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"
          )
        end
      end
    end
  end
end
