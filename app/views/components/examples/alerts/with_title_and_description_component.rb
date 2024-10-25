module Examples
  module Alerts
    class WithTitleAndDescriptionComponent < Base
      def title
        "Alert with title and description"
      end

      def example
        Alert class: "shadow-lg" do
          exclamation_svg

          div do
            h3 class: "font-bold" do
              "New message!"
            end

            div class: "text-xs" do
              "You have 1 unread message"
            end
          end

          Button :sm do
            "See"
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
