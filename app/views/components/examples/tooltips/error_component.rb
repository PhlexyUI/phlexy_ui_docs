module Examples
  module Tooltips
    class ErrorComponent < Base
      def title
        "Error"
      end

      def example
        Tooltip :open, :error, tip: "error" do
          Button :error do
            "error"
          end
        end
      end
    end
  end
end
