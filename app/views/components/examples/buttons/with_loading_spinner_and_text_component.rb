module Examples
  module Buttons
    class WithLoadingSpinnerAndTextComponent < Base
      def title
        "Button with loading spinner and text"
      end

      def example
        Button do
          Loading :spinner
          plain "loading"
        end
      end
    end
  end
end
