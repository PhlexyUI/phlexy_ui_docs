module Examples
  module Cards
    class GlassComponent < Base
      include Phlex::Rails::Helpers::ImagePath

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
        image_path "green_sneaker.webp"
      end
    end
  end
end
