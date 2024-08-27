module Examples
  module Badges
    class WithBrandColorsComponent < Base
      def title
        "Badge with brand colors"
      end

      def example
        Badge do
          "default"
        end

        Badge :neutral do
          "neutral"
        end

        Badge :primary do
          "primary"
        end

        Badge :secondary do
          "secondary"
        end

        Badge :accent do
          "accent"
        end

        Badge :ghost do
          "ghost"
        end
      end
    end
  end
end
