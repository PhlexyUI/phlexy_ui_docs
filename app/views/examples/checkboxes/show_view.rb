module Examples
  module Checkboxes
    class ShowView < BaseView
      def view_template
        title do
          "Checkbox"
        end

        render_examples [
          BasicComponent,
          WithLabelAndFormControlComponent,
          PrimaryColorComponent,
          SecondaryColorComponent,
          AccentColorComponent,
          SuccessColorComponent,
          WarningColorComponent,
          InfoColorComponent,
          ErrorColorComponent,
          SizesComponent,
          DisabledComponent,
          DisabledAndCheckedComponent,
          IndeterminateComponent,
          CustomColorsComponent
        ]
      end
    end
  end
end
