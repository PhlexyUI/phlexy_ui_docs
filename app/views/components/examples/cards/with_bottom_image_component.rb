module Examples
  module Cards
    class WithBottomImageComponent < Base
      def title
        "Card with bottom image"
      end

      def example
        Card :base_100, class: "w-96 shadow-xl" do |card|
          card.body do
            card.title do
              "Shoes!"
            end

            p do
              "If a dog chews shoes whose shoes does he choose?"
            end
          end

          figure do
            img(src:, alt: "Shoes")
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
