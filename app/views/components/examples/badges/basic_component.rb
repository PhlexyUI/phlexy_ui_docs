module Examples
  module Badges
    class BasicComponent < Base
      def title
        "Badge"
      end

      def example
        Badge do
          "Badge"
        end
      end
    end
  end
end
