module Examples
  module Loadings
    class WithColorsComponent < Base
      def title
        "Loading with colors"
      end

      def example
        Loading :spinner, :primary
        Loading :spinner, :secondary
        Loading :spinner, :accent
        Loading :spinner, :neutral
        Loading :spinner, :info
        Loading :spinner, :success
        Loading :spinner, :warning
        Loading :spinner, :error
      end
    end
  end
end
