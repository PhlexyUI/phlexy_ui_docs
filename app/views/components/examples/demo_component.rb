module Examples
  class DemoComponent < ApplicationComponent
    include Phlex::Rails::Helpers::LinkTo

    HIGHLIGHT_CSS_CLASS = "highlight"
    CODE_LINE_CSS_CLASS = "line-%i"

    def initialize(component:, title:, example_method:)
      @component = component
      @title = title
      @example_method = example_method
      @source = extract_method_source(example_method)

      @theme = Rouge::Themes::Monokai
      @formatter = Rouge::Formatters::HTML.new(@theme)
      @formatter = Rouge::Formatters::HTMLLineTable.new(
        @formatter,
        class: CODE_LINE_CSS_CLASS
      )
      @lexer = Rouge::Lexers::Ruby.new
      @css = @theme.render(scope: ".#{HIGHLIGHT_CSS_CLASS}")
    end

    def view_template
      render_demo_styles

      section class: "space-y-4" do
        render_header
        render_code
        render_demo
      end
    end

    private

    attr_reader :component, :title, :example_method, :source, :formatter, :lexer, :css

    def extract_method_source(example_method)
      source_code = example_method.source

      # Remove the first line (method definition) and the last line (final 'end')
      source_code.sub(/\A.*\n/, "").sub(/\n.*\Z/, "").strip_heredoc
    end

    def render_demo_styles
      style do
        css.html_safe + <<~CSS
          .highlight .rouge-code,
          /* daisyUI's mockup-code adds some padding to pre */
          .highlight table pre {
            padding: 0;
          }
  
          .highlight .rouge-gutter {
            width: 0;
            padding: 0;
            color: #494e61;
            text-shadow: none;
          }
  
          .highlight {
            background-color: oklch(var(--b2));
          }
  
          .highlight .gi {
            display: inline-block;
          }
        CSS
      end
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
      div(class: "mockup-code #{HIGHLIGHT_CSS_CLASS}") do
        pre class: "line-numbers" do
          code class: "language-rb" do
            formatter.format(lexer.lex(source)).html_safe
          end
        end
      end
    end

    def render_demo
      div class: "bg-base-200 flex justify-center items-center p-8" do
        @example_method.call
      end
    end
  end
end
