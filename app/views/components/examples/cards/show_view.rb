module Examples
  module Cards
    class ShowView < ApplicationView
      def view_template
        Title do
          "Card"
        end

        render ContainerComponent.new do
          render BasicComponent.new
          render CompactComponent.new
          render WithBadgeComponent.new
          render WithBottomImageComponent.new
          render WithCenteredContentAndPaddingsComponent.new
          render WithImageOverlayComponent.new
          render WithNoImageComponent.new
          render WithCustomColorComponent.new
          render CenteredWithNeutralColorComponent.new
          render WithActionOnTopComponent.new
          render GlassComponent.new
          render WithImageOnSideComponent.new
          render ResponsiveComponent.new
        end
      end
    end
  end
end
