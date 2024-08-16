module Examples
  module Buttons
    class WithLoadingSpinnerComponent < Base
      def title
        "Button with loading spinner"
      end

      def example
        Button :square do
          Loading :spinner
        end
      end
    end
  end
end
