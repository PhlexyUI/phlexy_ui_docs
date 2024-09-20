module Examples
  module Cards
    class WithImageOverlayComponent < Base
      include Phlex::Rails::Helpers::ImagePath

      def title
        "Card with image overlay"
      end

      def example
        Card :image_full, :base_100, class: "w-96 shadow-xl" do |card|
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
        image_path "green_sneaker.webp"
      end
    end
  end
end
