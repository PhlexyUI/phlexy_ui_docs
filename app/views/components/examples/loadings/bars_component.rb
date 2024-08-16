module Examples
  module Loadings
    class BarsComponent < Base
      def title
        "Loading bars"
      end

      def example
        Loading :bars, :xs
        Loading :bars, :sm
        Loading :bars, :md
        Loading :bars, :lg
      end
    end
  end
end
