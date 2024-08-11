module Examples
  module Cards
    class BasicComponent < Base
      def title
        "Card"
      end

      def example
        Card class: "bg-base-100 w-96 shadow-xl" do |card|
          figure do
            img(src:, alt: "Shoes")
          end

          card.body do
            card.title do
              "Shoes!"
            end

            p do
              "If a dog chews shoes whose shoes does he choose?"
            end

            card.actions class: "justify-end" do
              Button :primary do
                "Buy Now"
              end
            end
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
