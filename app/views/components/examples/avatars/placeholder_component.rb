module Examples
  module Avatars
    class PlaceholderComponent < Base
      def title
        "Avatar placeholder"
      end

      def example
        Avatar :placeholder do
          classes = [
            "bg-neutral",
            "text-neutral-content",
            "w-24",
            "rounded-full"
          ]

          div class: classes do
            span class: "text-3xl" do
              "D"
            end
          end
        end

        Avatar :placeholder, :online do
          classes = [
            "bg-neutral",
            "text-neutral-content",
            "w-16",
            "rounded-full"
          ]

          div class: classes do
            span class: "text-xl" do
              "AI"
            end
          end
        end

        Avatar :placeholder do
          classes = [
            "bg-neutral",
            "text-neutral-content",
            "w-12",
            "rounded-full"
          ]

          div class: classes do
            span do
              "SY"
            end
          end
        end

        Avatar :placeholder do
          classes = [
            "bg-neutral",
            "text-neutral-content",
            "w-8",
            "rounded-full"
          ]

          div class: classes do
            span class: "text-xs" do
              "UI"
            end
          end
        end
      end
    end
  end
end
