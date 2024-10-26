module Examples
  module RadialProgresses
    class DifferentValuesComponent < Base
      def title
        "Different values"
      end

      def example
        [0, 20, 60, 80, 100].map do |value|
          RadialProgress value: do
            "#{value}%"
          end
        end
      end
    end
  end
end
