module Examples
  module Skeletons
    class RectangleWithContentComponent < Base
      def title
        "Skeleton - rectangle with content"
      end

      def example
        div class: "flex w-52 flex-col gap-4" do
          Skeleton class: "h-32 w-full"
          Skeleton class: "h-4 w-28"
          Skeleton class: "h-4 w-full"
          Skeleton class: "h-4 w-full"
        end
      end
    end
  end
end
