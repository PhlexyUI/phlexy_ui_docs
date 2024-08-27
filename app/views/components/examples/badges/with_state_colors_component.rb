module Examples
  module Badges
    class WithStateColorsComponent < Base
      def title
        "Badge with state colors"
      end

      def example
        Badge :info, class: "gap-2" do
          x_svg
          plain "info"
        end

        Badge :success, class: "gap-2" do
          x_svg
          plain "success"
        end

        Badge :warning, class: "gap-2" do
          x_svg
          plain "warning"
        end

        Badge :error, class: "gap-2" do
          x_svg
          plain "error"
        end
      end

      private

      def x_svg
        svg(
          xmlns: "http://www.w3.org/2000/svg",
          fill: "none",
          viewbox: "0 0 24 24",
          class: "inline-block h-4 w-4 stroke-current"
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
