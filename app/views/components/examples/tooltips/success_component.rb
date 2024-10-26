module Examples
  module Tooltips
    class SuccessComponent < Base
      def title
        "Success"
      end

      def example
        Tooltip :open, :success, tip: "success" do
          Button :success do
            "success"
          end
        end
      end
    end
  end
end
