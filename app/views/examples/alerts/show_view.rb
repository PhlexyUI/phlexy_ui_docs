module Examples
  module Alerts
    class ShowView < BaseView
      def view_template
        title do
          "Alert"
        end

        render_examples [
          BasicComponent,
          InfoColorComponent,
          SuccessColorComponent,
          WarningColorComponent,
          ErrorColorComponent,
          WithButtonsComponent,
          WithTitleAndDescriptionComponent
        ]
      end
    end
  end
end
