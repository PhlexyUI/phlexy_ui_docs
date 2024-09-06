module Examples
  module Links
    class UnderlinedComponent < Base
      def title
        "Underlined"
      end

      def example
        Link :underlined, href: "#" do
          "I'm underlined"
        end
      end
    end
  end
end
