module Examples
  module Skeletons
    class BasicComponent < Base
      def title
        "Button skeleton"
      end

      def example
        Skeleton class: "h-32 w-32" do
        end
      end
    end
  end
end
