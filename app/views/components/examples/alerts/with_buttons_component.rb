module Examples
  module Alerts
    class WithButtonsComponent < Base
      def title
        "Alert with buttons"
      end

      def example
        Alert do
          exclamation_svg

          span do
            "We use cookies for no reason."
          end

          div do
            Button :sm do
              "Deny"
            end

            Button :sm, :primary do
              "Accept"
            end
          end
        end
      end

      private

      def exclamation_svg
        svg(
          xmlns: "http://www.w3.org/2000/svg",
          fill: "none",
          viewbox: "0 0 24 24",
          class: "stroke-current shrink-0 w-6 h-6"
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