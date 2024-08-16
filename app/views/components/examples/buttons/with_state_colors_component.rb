module Examples
  module Buttons
    class WithStateColorsComponent < Base
      def title
        "Buttons with state colors"
      end

      def example
        Button :info do
          "Info"
        end

        Button :success do
          "Success"
        end

        Button :warning do
          "Warning"
        end

        Button :error do
          "Error"
        end
      end
    end
  end
end
