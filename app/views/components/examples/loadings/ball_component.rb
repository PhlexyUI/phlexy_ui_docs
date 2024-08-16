module Examples
  module Loadings
    class BallComponent < Base
      def title
        "Loading ball"
      end

      def example
        Loading :ball, :xs
        Loading :ball, :sm
        Loading :ball, :md
        Loading :ball, :lg
      end
    end
  end
end
