module Examples
  module Loadings
    class DotsComponent < Base
      def title
        "Loading dots"
      end

      def example
        Loading :dots, :xs
        Loading :dots, :sm
        Loading :dots, :md
        Loading :dots, :lg
      end
    end
  end
end
