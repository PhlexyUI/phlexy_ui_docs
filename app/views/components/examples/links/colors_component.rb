module Examples
  module Links
    class ColorsComponent < Base
      def title
        "Colors"
      end

      def example
        Link :primary, :underlined, href: "#" do
          "Primary"
        end

        Link :secondary, :underlined, href: "#" do
          "Secondary"
        end

        Link :accent, :underlined, href: "#" do
          "Accent"
        end

        Link :neutral, :underlined, href: "#" do
          "Neutral"
        end

        Link :success, :underlined, href: "#" do
          "Success"
        end

        Link :info, :underlined, href: "#" do
          "Info"
        end

        Link :warning, :underlined, href: "#" do
          "Warning"
        end

        Link :error, :underlined, href: "#" do
          "Error"
        end
      end
    end
  end
end
