module Examples
  module Cards
    class GlassComponent < Base
      def title
        "Card with action on top"
      end

      def example
        Card :glass, class: "w-96" do |card|
          figure do
            img(src:, alt: "car!")
          end

          card.body do
            card.title do
              "Life hack"
            end

            p do
              "How to park your car at your garage?"
            end

            card.actions class: "justify-end" do
              Button :primary do
                "Learn now!"
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
