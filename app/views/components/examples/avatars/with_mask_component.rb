module Examples
  module Avatars
    class WithMaskComponent < Base
      include Phlex::Rails::Helpers::ImagePath

      def title
        "Avatar with mask"
      end

      def example
        Avatar do
          Mask :squircle, class: "w-24" do
            img src:, alt:
          end
        end

        Avatar do
          Mask :hexagon, class: "w-24" do
            img src:, alt:
          end
        end

        Avatar do
          Mask :triangle, class: "w-24" do
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
