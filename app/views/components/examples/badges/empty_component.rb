module Examples
  module Badges
    class EmptyComponent < Base
      def title
        "Empty badge"
      end

      def example
        Badge :lg, :primary
        Badge :md, :primary
        Badge :sm, :primary
        Badge :xs, :primary
      end
    end
  end
end
