module Examples
  module Tooltips
    class BasicComponent < Base
      def title
        "Tooltip"
      end

      def example
        Tooltip tip: "hello" do
          Button do
            "Hover me"
          end
        end
      end
    end
  end
end
