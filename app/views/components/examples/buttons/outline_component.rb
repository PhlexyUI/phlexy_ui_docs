module Examples
  module Buttons
    class OutlineComponent < Base
      def title
        "Outline buttons"
      end

      def example
        Button :outline do
          "Default"
        end

        Button :outline, :primary do
          "Primary"
        end

        Button :outline, :secondary do
          "Secondary"
        end

        Button :outline, :accent do
          "Accent"
        end
      end
    end
  end
end
