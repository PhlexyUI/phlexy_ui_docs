module Examples
  module Badges
    class InAButtonComponent < Base
      def title
        "Badge in a button"
      end

      def example
        Button do
          plain "Inbox"
          Badge do
            "+99"
          end
        end

        Button do
          plain "Inbox"
          Badge :secondary do
            "+99"
          end
        end
      end
    end
  end
end
