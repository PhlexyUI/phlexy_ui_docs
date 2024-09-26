module Examples
  module Avatars
    class CustomSizesComponent < Base
      include Phlex::Rails::Helpers::ImagePath

      def title
        "Avatar in custom sizes"
      end

      def example
        ["w-32", "w-20", "w-16", "w-8"].each do |width|
          Avatar do
            div class: "rounded #{width}" do
              img src:, alt:
            end
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
