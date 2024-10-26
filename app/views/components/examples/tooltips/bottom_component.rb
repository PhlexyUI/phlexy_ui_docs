module Examples
  module Tooltips
    class BottomComponent < Base
      def title
        "Bottom"
      end

      def example
        Tooltip :open, :bottom, tip: "hello" do
          Button do
            "Bottom"
          end
        end
      end
    end
  end
end
