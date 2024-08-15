module Examples
  module Cards
    class ShowView < ApplicationView
      def initialize(component:)
        @component = component
      end

      def view_template
        Title do
          "Card"
        end

        render ContainerComponent.new do
          with_options component: do
            render_examples [
              BasicComponent,
              CompactComponent,
              WithBadgeComponent,
              WithBottomImageComponent,
              WithCenteredContentAndPaddingsComponent,
              WithImageOverlayComponent,
              WithNoImageComponent,
              WithCustomColorComponent,
              CenteredWithNeutralColorComponent,
              WithActionOnTopComponent,
              GlassComponent,
              WithImageOnSideComponent,
              ResponsiveComponent
            ]
          end
        end
      end

      private

      attr_reader :component

      def render_examples(example_components, **)
        example_components.each do |example_component|
          render example_component.new(**)
        end
      end
    end
  end
end
