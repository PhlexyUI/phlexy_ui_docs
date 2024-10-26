module Examples
  module RadialProgresses
    class CustomSizeAndCustomThicknessComponent < Base
      def title
        "Custom size and custom thickness"
      end

      def example
        RadialProgress value: 70, size: "12rem", thickness: "2px" do
          "70%"
        end

        RadialProgress value: 70, size: "12rem", thickness: "2rem" do
          "70%"
        end
      end
    end
  end
end
