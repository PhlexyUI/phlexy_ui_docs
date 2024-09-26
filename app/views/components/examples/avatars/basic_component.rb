module Examples
  module Avatars
    class BasicComponent < Base
      include Phlex::Rails::Helpers::ImagePath

      def title
        "Avatar"
      end

      def example
        Avatar do
          div class: "w-24 rounded" do
            img src:
          end
        end
      end

      private

      def src
        image_path "person_4.webp"
      end
    end
  end
end
