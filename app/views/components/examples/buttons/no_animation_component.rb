module Examples
  module Buttons
    class NoAnimationComponent < Base
      def title
        "Button without click animation"
      end

      def example
        Button :no_animation do
          "I don't have click animation"
        end
      end
    end
  end
end
