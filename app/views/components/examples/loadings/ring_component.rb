module Examples
  module Loadings
    class RingComponent < Base
      def title
        "Loading ring"
      end

      def example
        Loading :ring, :xs
        Loading :ring, :sm
        Loading :ring, :md
        Loading :ring, :lg
      end
    end
  end
end
