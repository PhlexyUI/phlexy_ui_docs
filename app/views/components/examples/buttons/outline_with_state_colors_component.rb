module Examples
  module Buttons
    class OutlineWithStateColorsComponent < Base
      def title
        "Outline buttons with state colors"
      end

      def example
        Button :outline, :info do
          "Info"
        end

        Button :outline, :success do
          "Success"
        end

        Button :outline, :warning do
          "Warning"
        end

        Button :outline, :error do
          "Error"
        end
      end
    end
  end
end
