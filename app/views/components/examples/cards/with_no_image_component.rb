module Examples
  module Cards
    class WithNoImageComponent < Base
      def title
        "Card with no image"
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

            card.actions class: "justify-end" do
              Button :primary do
                "Buy Now"
              end
            end
          end
        end
      end
    end
  end
end
