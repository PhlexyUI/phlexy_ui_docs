module Examples
  module Menus
    class WithIconAndBadgeResponsiveComponent < Base
      def title
        "Menu with icons and badge (responsive)"
      end

      def example
        Menu :base_200, lg: :horizontal, class: "rounded-box flex-nowrap" do |menu|
          menu.item do
            a do
              house_svg
              plain "Inbox"
              Badge :sm do
                "99+"
              end
            end
          end

          menu.item do
            a do
              info_svg
              plain "Updates"
              Badge :sm, :warning do
                "NEW"
              end
            end
          end

          menu.item do
            a do
              plain "Stats"
              Badge :xs, :info
            end
          end
        end
      end

      private

      def house_svg
        svg(
          xmlns: "http://www.w3.org/2000/svg",
          class: "h-5 w-5",
          fill: "none",
          viewbox: "0 0 24 24",
          stroke: "currentColor"
        ) do |s|
          s.path(
            stroke_linecap: "round",
            stroke_linejoin: "round",
            stroke_width: "2",
            d:
              "M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"
          )
        end
      end

      def info_svg
        svg(
          xmlns: "http://www.w3.org/2000/svg",
          class: "h-5 w-5",
          fill: "none",
          viewbox: "0 0 24 24",
          stroke: "currentColor"
        ) do |s|
          s.path(
            stroke_linecap: "round",
            stroke_linejoin: "round",
            stroke_width: "2",
            d: "M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"
          )
        end
      end

      def chart_svg
        svg(
          xmlns: "http://www.w3.org/2000/svg",
          class: "h-5 w-5",
          fill: "none",
          viewbox: "0 0 24 24",
          stroke: "currentColor"
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
