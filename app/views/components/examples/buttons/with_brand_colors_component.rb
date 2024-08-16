module Examples
  module Buttons
    class WithBrandColorsComponent < Base
      def title
        "Buttons with brand colors"
      end

      def example
        Button do
          "Button"
        end

        Button :neutral do
          "Neutral"
        end

        Button :primary do
          "Primary"
        end

        Button :secondary do
          "Secondary"
        end

        Button :accent do
          "Accent"
        end

        Button :ghost do
          "Ghost"
        end

        Button :link do
          "Link"
        end
      end
    end
  end
end
