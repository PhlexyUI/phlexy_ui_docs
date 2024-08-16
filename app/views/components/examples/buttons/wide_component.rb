module Examples
  module Buttons
    class WideComponent < Base
      def title
        "Wide button"
      end

      def example
        Button :wide do
          "Wide"
        end
      end
    end
  end
end
