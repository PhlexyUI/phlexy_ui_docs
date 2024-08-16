module Examples
  module Buttons
    class GlassComponent < Base
      def title
        "Glass button"
      end

      def example
        Button :glass do
          "Glass button"
        end
      end
    end
  end
end
