module Examples
  module RadialProgresses
    class BasicComponent < Base
      def title
        "RadialProgress"
      end

      def example
        RadialProgress value: 70 do
          "70%"
        end
      end
    end
  end
end
