module Examples
  module Avatars
    class WithRingComponent < Base
      include Phlex::Rails::Helpers::ImagePath

      def title
        "Avatar with ring"
      end

      def example
        Avatar do
          classes = [
            "w-24",
            "rounded-full",
            "ring",
            "ring-primary",
            "ring-offset-base-100",
            "ring-offset-2"
          ]

          div class: classes do
            img src:, alt:
          end
        end
      end

      private

      def src
        image_path("person_4.webp")
      end

      def alt
        "Avatar with ring"
      end
    end
  end
end
