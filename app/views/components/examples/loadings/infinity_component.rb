module Examples
  module Loadings
    class InfinityComponent < Base
      def title
        "Loading infinity"
      end

      def example
        Loading :infinity, :xs
        Loading :infinity, :sm
        Loading :infinity, :md
        Loading :infinity, :lg
      end
    end
  end
end
