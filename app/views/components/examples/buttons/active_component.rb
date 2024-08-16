module Examples
  module Buttons
    class ActiveComponent < Base
      def title
        "Active buttons"
      end

      def example
        Button :active do
          "Button"
        end

        Button :active, :neutral do
          "Neutral"
        end

        Button :active, :primary do
          "Primary"
        end

        Button :active, :secondary do
          "Secondary"
        end

        Button :active, :accent do
          "Accent"
        end

        Button :active, :ghost do
          "Ghost"
        end

        Button :active, :link do
          "Link"
        end
      end
    end
  end
end
