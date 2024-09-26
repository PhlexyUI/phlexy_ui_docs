module Examples
  module Avatars
    class PlaceholderComponent < Base
      def title
        "Avatar placeholder"
      end

      def example
        base_classes = [
          "rounded-full",
          "bg-neutral",
          "text-neutral-content"
        ]

        Avatar :placeholder do
          div class: [*base_classes, "w-24"] do
            span class: "text-3xl" do
              "D"
            end
          end
        end

        Avatar :placeholder, :online do
          div class: [*base_classes, "w-16"] do
            span class: "text-xl" do
              "AI"
            end
          end
        end

        Avatar :placeholder do
          div class: [*base_classes, "w-12"] do
            span do
              "SY"
            end
          end
        end

        Avatar :placeholder do
          div class: [*base_classes, "w-8"] do
            span class: "text-xs" do
              "UI"
            end
          end
        end
      end
    end
  end
end
