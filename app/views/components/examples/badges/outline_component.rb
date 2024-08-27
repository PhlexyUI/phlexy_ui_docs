module Examples
  module Badges
    class OutlineComponent < Base
      def title
        "Outline badge"
      end

      def example
        Badge :outline do
          "default"
        end

        Badge :primary, :outline do
          "primary"
        end

        Badge :secondary, :outline do
          "secondary"
        end

        Badge :accent, :outline do
          "accent"
        end
      end
    end
  end
end
