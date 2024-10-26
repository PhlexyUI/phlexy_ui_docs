module Examples
  module Tooltips
    class LeftComponent < Base
      def title
        "Left"
      end

      def example
        Tooltip :open, :left, tip: "hello" do
          Button do
            "Left"
          end
        end
      end
    end
  end
end
