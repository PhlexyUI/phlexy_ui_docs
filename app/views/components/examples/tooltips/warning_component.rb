module Examples
  module Tooltips
    class WarningComponent < Base
      def title
        "Warning"
      end

      def example
        Tooltip :open, :warning, tip: "warning" do
          Button :warning do
            "warning"
          end
        end
      end
    end
  end
end
