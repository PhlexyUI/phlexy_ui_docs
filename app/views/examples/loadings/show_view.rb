module Examples
  module Loadings
    class ShowView < BaseView
      def view_template
        title do
          "Loading"
        end

        render_examples [
          BasicComponent,
          DotsComponent,
          RingComponent,
          BallComponent,
          BarsComponent,
          InfinityComponent,
          WithColorsComponent
        ]
      end
    end
  end
end
