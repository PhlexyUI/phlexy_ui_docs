module Examples
  module Badges
    class SizesComponent < Base
      def title
        "Badge sizes"
      end

      def example
        Badge :lg do
          "987,654"
        end

        Badge :md do
          "987,654"
        end

        Badge :sm do
          "987,654"
        end

        Badge :xs do
          "987,654"
        end
      end
    end
  end
end
