module Examples
  class DemoComponent < ApplicationComponent
    include Phlex::Rails::Helpers::LinkTo

    def initialize(component:, title:, example_method:, subtitle: nil)
      @component = component
      @title = title
      @subtitle = subtitle
      @example_method = example_method
      @source = extract_method_source(example_method)
    end

    def view_template
      section do
        render_header

        div class: "flex flex-col flex-col-reverse md:flex-row gap-4" do
          div class: "w-full md:w-6/12" do
            render_code
          end
          div class: "w-full md:w-6/12" do
            render_demo
          end
        end
      end
    end

    private

    attr_reader :component, :title, :subtitle, :example_method, :source

    def extract_method_source(example_method)
      source_code = example_method.source

      # Remove the first line (method definition) and the last line (final 'end')
      source_code.sub(/\A.*\n/, "").sub(/\n.*\Z/, "").strip_heredoc
    end

    def render_header
      header class: "sticky top-[4.5rem] z-10 bg-base-100 pb-4" do
        h2 class: "text-sm font-bold mb-4", id: title.parameterize do
          link_to "# ", examples_path(component, anchor: title.parameterize), data: {turbo_frame: :_top}

          span do
            title
          end
        end

        if subtitle
          small do
            subtitle
          end
        end
      end
    end

    def render_code
      Code(:ruby, source:, mockup: true)
    end

    def render_demo
      classes = [
        # Border and background
        "border-base-300",
        "[border-width:var(--tab-border)]",
        "bg-[length:40px_40px]",
        "bg-top",

        # Flexbox layout
        "flex",
        "flex-wrap",
        "gap-4",
        "[justify-content:safe_center]",
        "items-center",
        "content-center",

        # Padding and size
        "p-8",
        "min-h-[24rem]",

        # Miscellaneous
        "rounded-box",
        "overflow-x-auto",

        # Positioning
        "sticky",
        "top-[7.8rem]"
      ]

      style = <<~CSS
        background-image: repeating-linear-gradient(
          45deg,
          var(--fallback-b1, oklch(var(--b1))),
          var(--fallback-b1, oklch(var(--b1))) 13px,
          var(--fallback-b2, oklch(var(--b2))) 13px,
          var(--fallback-b2, oklch(var(--b2))) 14px
        );
      CSS

      div class: classes, style: style do
        @example_method.call
      end
    end
  end
end
