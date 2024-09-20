module Examples
  module Cards
    class WithBadgeComponent < Base
      include Phlex::Rails::Helpers::ImagePath

      def title
        "Card with badge"
      end

      def example
        Card :base_100, class: "w-96 shadow-xl" do |card|
          figure do
            img(src:, alt: "Shoes")
          end

          card.body do
            card.title do
              plain "Shoes!"
              Badge :secondary do
                "NEW"
              end
            end

            p do
              "If a dog chews shoes whose shoes does he choose?"
            end

            card.actions class: "justify-end" do
              Badge :outline do
                "Fashion"
              end
              Badge :outline do
                "Products"
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
