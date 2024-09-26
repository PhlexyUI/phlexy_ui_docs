module Examples
  module Avatars
    class RoundedComponent < Base
      include Phlex::Rails::Helpers::ImagePath

      def title
        "Avatar rounded"
      end

      def example
        Avatar do
          div class: "w-24 rounded-xl" do
            img src:, alt:
          end
        end

        Avatar do
          div class: "w-24 rounded-full" do
            img src:, alt:
          end
        end
      end

      private

      def src
        image_path("person_4.webp")
      end

      def alt
        "Tailwind-CSS-Avatar-component"
      end
    end
  end
end
