module Examples
  module Cards
    class WithImageOverlayComponent < Base
      def title
        "Card with image overlay"
      end

      def example
        Card :image_full, class: "bg-base-100 w-96 shadow-xl" do |card|
          card.body do
            card.title do
              "Shoes!"
            end

            p do
              "If a dog chews shoes whose shoes does he choose?"
            end
          end

          figure do
            img(
              src:,
              alt: "Shoes"
            )
          end
        end
      end

      private

      def src
        "https://img.daisyui.com/images/stock/photo-1606107557195-0e29a4b5b4aa.webp"
      end
    end
  end
end
