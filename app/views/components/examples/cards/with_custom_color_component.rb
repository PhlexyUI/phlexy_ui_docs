module Examples
  module Cards
    class WithCustomColorComponent < Base
      def title
        "Card with custom color"
      end

      def example
        Card class: "bg-primary text-primary-content w-96" do |card|
          card.body do
            card.title do
              "Card title!"
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
