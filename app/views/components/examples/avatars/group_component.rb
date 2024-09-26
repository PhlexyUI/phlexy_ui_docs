module Examples
  module Avatars
    class GroupComponent < Base
      include Phlex::Rails::Helpers::ImagePath

      def title
        "Avatar group"
      end

      def example
        AvatarGroup class: "-space-x-6 rtl:space-x-reverse" do |avatar_group|
          4.times do
            avatar_group.avatar do
              div class: "w-12" do
                img src:, alt:
              end
            end
          end
        end
      end

      private

      def src
        image_path("person_4.webp")
      end

      def alt
        "Avatar"
      end
    end
  end
end
