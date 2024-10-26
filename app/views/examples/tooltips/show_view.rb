module Examples
  module Tooltips
    class ShowView < BaseView
      def view_template
        title do
          "Tooltip"
        end

        render_examples [
          BasicComponent,
          ForceOpenComponent,
          TopComponent,
          BottomComponent,
          LeftComponent,
          RightComponent,
          PrimaryComponent,
          SecondaryComponent,
          AccentComponent,
          InfoComponent,
          SuccessComponent,
          WarningComponent,
          ErrorComponent,
          ResponsiveComponent
        ]
      end
    end
  end
end
