module Examples
  module Links
    class UnderlinedOnlyOnHoverComponent < Base
      def title
        "Show underline only on hover"
      end

      def example
        Link :hover, href: "#" do
          "Hover me"
        end
      end
    end
  end
end
