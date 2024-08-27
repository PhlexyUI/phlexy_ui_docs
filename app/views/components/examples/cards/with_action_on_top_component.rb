module Examples
  module Cards
    class WithActionOnTopComponent < Base
      def title
        "Card with action on top"
      end

      def example
        Card :base_100, class: "w-96 shadow-xl" do |card|
          card.body do
            card.actions class: "justify-end" do
              Button :sm, :square do
                x_icon_svg
              end
            end

            p do
              "We are using cookies for no reason."
            end
          end
        end
      end

      private

      def x_icon_svg
        svg xmlns: "http://www.w3.org/2000/svg",
          class: "h-6 w-6",
          fill: "none",
          viewBox: "0 0 24 24",
          stroke: "currentColor" do |svg|
          svg.path stroke_linecap: "round",
            stroke_linejoin: "round",
            stroke_width: "2",
            d: "M6 18L18 6M6 6l12 12"
        end
      end
    end
  end
end
