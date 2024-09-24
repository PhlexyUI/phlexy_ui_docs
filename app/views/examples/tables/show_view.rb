module Examples
  module Tables
    class ShowView < BaseView
      def view_template
        title do
          "Table"
        end

        render_examples [
          BasicComponent,
          WithAnActiveRow,
          WithARowThatHighlightsOnHover,
          Zebra,
          WithVisualElements,
          XsComponent,
          WithPinnedRowsComponent,
          WithPinnedRowsAndPinnedColsComponent
        ]
      end
    end
  end
end
