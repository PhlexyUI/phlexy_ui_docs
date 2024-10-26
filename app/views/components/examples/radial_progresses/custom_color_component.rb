module Examples
  module RadialProgresses
    class CustomColorComponent < Base
      def title
        "Custom color"
      end

      def example
        RadialProgress :primary_outline, value: 70 do
          "70%"
        end
      end
    end
  end
end
