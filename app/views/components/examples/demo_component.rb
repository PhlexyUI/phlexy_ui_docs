module Examples
  class DemoComponent < ApplicationComponent
    include Phlex::Rails::Helpers::LinkTo

    def initialize(component:, title:, example_method:)
      @component = component
      @title = title
      @example_method = example_method
      @source = extract_method_source(example_method)
    end

    def view_template
      section class: "space-y-4" do
        render_header

        div class: "flex gap-4" do
          div class: "w-7/12" do
            render_code
          end
          div class: "w-5/12" do
            render_demo
          end
        end
      end
    end

    private

    attr_reader :component, :title, :example_method, :source

    def extract_method_source(example_method)
      source_code = example_method.source

      # Remove the first line (method definition) and the last line (final 'end')
      source_code.sub(/\A.*\n/, "").sub(/\n.*\Z/, "").strip_heredoc
    end

    def render_header
      header do
        h2 class: "text-sm font-bold mb-4", id: title.parameterize do
          link_to "# ", examples_path(component, anchor: title.parameterize)

          span do
            title
          end
        end
      end
    end

    def render_code
      Code(:ruby, source:)
    end

    def render_demo
      classes = [
        "bg-base-200",
        "flex",
        "flex-wrap",
        "gap-4",
        "justify-center",
        "items-center",
        "p-8"
      ]

      div class: classes do
        @example_method.call
      end
    end
  end
end
