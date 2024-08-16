module Examples
  module Loadings
    class BasicComponent < Base
      def title
        "Loading spinner"
      end

      def example
        Loading :spinner, :xs
        Loading :spinner, :sm
        Loading :spinner, :md
        Loading :spinner, :lg
      end
    end
  end
end
