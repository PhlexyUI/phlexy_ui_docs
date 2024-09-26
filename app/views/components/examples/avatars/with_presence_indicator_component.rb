module Examples
  module Avatars
    class WithPresenceIndicatorComponent < Base
      include Phlex::Rails::Helpers::ImagePath

      def title
        "Avatar with presence indicator"
      end

      def example
        Avatar :online do
          div class: "w-24 rounded-full" do
            img src:, alt:
          end
        end

        Avatar :offline do
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
        "Avatar with presence indicator"
      end
    end
  end
end
