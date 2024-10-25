module Examples
  module Skeletons
    class CircleWithContentComponent < Base
      def title
        "Skeleton - circle with content"
      end

      def example
        div class: "flex w-52 flex-col gap-4" do
          div class: "flex items-center gap-4" do
            Skeleton class: "h-16 w-16 shrink-0 rounded-full"

            div class: "flex flex-col gap-4" do
              Skeleton class: "h-4 w-20"
              Skeleton class: "h-4 w-28"
            end
          end

          Skeleton class: "h-32 w-full"
        end
      end
    end
  end
end
