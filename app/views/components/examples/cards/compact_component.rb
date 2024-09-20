module Examples
  module Cards
    class CompactComponent < Base
      include Phlex::Rails::Helpers::ImagePath

      def title
        "Compact card (less padding for `card-body`)"
      end

      def example
        Card :compact, :base_100, class: "w-96 shadow-xl" do |card|
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
        image_path "green_sneaker.webp"
      end
    end
  end
end
