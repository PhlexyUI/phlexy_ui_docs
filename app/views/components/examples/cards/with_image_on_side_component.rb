module Examples
  module Cards
    class WithImageOnSideComponent < Base
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
        "https://img.daisyui.com/images/stock/photo-1635805737707-575885ab0820.webp"
      end
    end
  end
end
