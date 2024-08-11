module Examples
  module Cards
    class ResponsiveComponent < Base
      def title
        "Responsive card (vertical on small screen, horizontal on large screen)"
      end

      def example
        Card lg: :side, class: "bg-base-100 shadow-xl" do |card|
          figure do
            img(src:, alt: "Album")
          end

          card.body do
            card.title do
              "New album is released!"
            end

            p do
              "Click the button to listen on Spotiwhy app."
            end

            card.actions class: "justify-end" do
              Button :primary do
                "Listen"
              end
            end
          end
        end
      end

      private

      def src
        "https://img.daisyui.com/images/stock/photo-1494232410401-ad00d5433cfa.webp"
      end
    end
  end
end
