module Examples
  module Badges
    class InATextComponent < Base
      def title
        "Badge in a text"
      end

      def example
        h2 class: "text-xl" do
          plain "Heading"
          Badge :lg do
            "NEW"
          end
        end

        h3 class: "text-lg" do
          plain "Heading"
          Badge :md do
            "NEW"
          end
        end

        h4 class: "text-base" do
          plain "Heading"
          Badge :sm do
            "NEW"
          end
        end

        h5 class: "text-sm" do
          plain "Heading"
          Badge :xs do
            "NEW"
          end
        end
      end
    end
  end
end
