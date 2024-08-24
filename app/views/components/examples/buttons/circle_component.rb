module Examples
  module Buttons
    class CircleComponent < Base
      def title
        "Circle button"
      end

      def example
        Button :circle do
          x_svg
        end

        Button :circle, :outline do
          x_svg
        end
      end

      private

      def x_svg
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
            d: "M6 18L18 6M6 6l12 12"
          )
        end
      end
    end
  end
end