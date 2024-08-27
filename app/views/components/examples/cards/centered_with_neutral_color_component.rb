module Examples
  module Cards
    class CenteredWithNeutralColorComponent < Base
      def title
        "Centered card with neutral color"
      end

      def example
        Card :neutral, class: "w-96" do |card|
          card.body class: "items-center text-center" do
            card.title do
              "Cookies!"
            end

            p do
              "We are using cookies for no reason."
            end

            card.actions class: "justify-end" do
              Button :primary do
                "Accept"
              end

              Button :ghost do
                "Deny"
              end
            end
          end
        end
      end
    end
  end
end
