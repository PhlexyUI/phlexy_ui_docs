module Examples
  module Buttons
    class SizesComponent < Base
      def title
        "Button sizes"
      end

      def example
        Button :lg do
          "Large"
        end

        Button do
          "Normal"
        end

        Button :sm do
          "Small"
        end

        Button :xs do
          "Tiny"
        end
      end
    end
  end
end
