module Examples
  module Buttons
    class BlockComponent < Base
      def title
        "Button block"
      end

      def example
        Button :block do
          "block"
        end
      end
    end
  end
end
