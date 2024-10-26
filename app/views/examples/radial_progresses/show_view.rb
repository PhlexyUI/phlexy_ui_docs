module Examples
  module RadialProgresses
    class ShowView < BaseView
      def view_template
        title do
          "RadialProgress"
        end

        render_examples [
          BasicComponent,
          DifferentValuesComponent,
          CustomColorComponent,
          WithBackgroundColorAndBorderComponent,
          CustomSizeAndCustomThicknessComponent
        ]
      end
    end
  end
end
