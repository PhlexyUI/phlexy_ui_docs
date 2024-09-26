module Examples
  module Avatars
    class ShowView < BaseView
      def view_template
        title do
          "Avatar"
        end

        render_examples [
          BasicComponent,
          CustomSizesComponent,
          RoundedComponent,
          WithMaskComponent,
          GroupComponent,
          GroupWithCounterComponent,
          WithRingComponent,
          WithPresenceIndicatorComponent,
          PlaceholderComponent
        ]
      end
    end
  end
end
