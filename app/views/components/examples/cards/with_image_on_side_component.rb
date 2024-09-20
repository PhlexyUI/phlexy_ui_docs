module Examples
  module Cards
    class WithImageOnSideComponent < Base
      include Phlex::Rails::Helpers::ImagePath

      def title
        "Card with image on side"
      end

      def example
        Card :side, :base_100, class: "shadow-xl" do |card|
          figure do
            img(src:, alt: "Movie")
          end

          card.body do
            card.title do
              "New movie is released!"
            end

            p do
              "Click the button to watch on Jetflix app."
            end

            card.actions class: "justify-end" do
              Button :primary do
                "Watch"
              end
            end
          end
        end
      end

      def src
        image_path "casette.webp"
      end
    end
  end
end
