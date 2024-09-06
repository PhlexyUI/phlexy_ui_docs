module Examples
  module Links
    class BasicComponent < Base
      def title
        "Link"
      end

      def example
        Link href: "#" do
          "I'm a simple link"
        end
      end
    end
  end
end
