module Examples
  module Cards
    class ResponsiveComponent < Base
      include Phlex::Rails::Helpers::ImagePath

      def title
        "Responsive card (vertical on small screen, horizontal on large screen)"
      end

      def example
        Card :base_100, responsive: {lg: :side}, class: "shadow-xl" do |card|
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
        image_path "spiderman.webp"
      end
    end
  end
end
