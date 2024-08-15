module Examples
  module Cards
    class ShowView < BaseView
      def view_template
        Title :"4x", :extrabold do
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
    end
  end
end
