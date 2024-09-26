module Examples
  module Avatars
    class GroupWithCounterComponent < Base
      include Phlex::Rails::Helpers::ImagePath

      def title
        "Avatar group with counter"
      end

      def example
        AvatarGroup class: "-space-x-6 rtl:space-x-reverse" do |avatar_group|
          3.times do
            avatar_group.avatar do
              div class: "w-12" do
                img src:, alt:
              end
            end
          end

          avatar_group.avatar :placeholder do
            div class: "w-12 bg-neutral text-neutral-content" do
              span do
                "+99"
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
