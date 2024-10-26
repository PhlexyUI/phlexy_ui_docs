module Examples
  module RadialProgresses
    class WithBackgroundColorAndBorderComponent < Base
      def title
        "With background color and border"
      end

      def example
        RadialProgress :primary, value: 70, class: "border-4" do
          "70%"
        end
      end
    end
  end
end
