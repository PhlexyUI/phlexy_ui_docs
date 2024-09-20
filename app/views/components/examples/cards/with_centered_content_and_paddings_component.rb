module Examples
  module Cards
    class WithCenteredContentAndPaddingsComponent < Base
      include Phlex::Rails::Helpers::ImagePath

      def title
        "Card with centered content and paddings"
      end

      def example
        Card :base_100, class: "w-96 shadow-xl" do |card|
          figure class: "px-10 pt-10" do
            img(src:, alt: "Shoes", class: "rounded-xl")
          end

          card.body class: "items-center text-center" do
            card.title do
              "Shoes!"
            end

            p do
              "If a dog chews shoes whose shoes does he choose?"
            end

            card.actions do
              Button :primary do
                "Buy Now"
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
