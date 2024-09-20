module Shared
  class Code < ApplicationComponent
    HIGHLIGHT_CSS_CLASS = "highlight"
    CODE_LINE_CSS_CLASS = "line-%i"

    def initialize(format, source:)
      @source = source
      @format = format

      @theme = Rouge::Themes::Monokai
      @formatter = Rouge::Formatters::HTML.new(@theme)
      @formatter = Rouge::Formatters::HTMLLineTable.new(
        @formatter,
        class: CODE_LINE_CSS_CLASS
      )
      @css = @theme.render(scope: ".#{HIGHLIGHT_CSS_CLASS}")
    end

    def view_template
      render_css

      div(class: "mockup-code #{HIGHLIGHT_CSS_CLASS}") do
        pre class: "line-numbers" do
          code class: "language-rb" do
            formatter.format(lexer.lex(source)).html_safe
          end
        end
      end
    end

    private

    attr_reader :source, :format, :formatter, :css

    def lexer
      case format
      when :ruby then Rouge::Lexers::Ruby.new
      when :shell then Rouge::Lexers::Shell.new
      when :javascript then Rouge::Lexers::Javascript.new
      when :html then Rouge::Lexers::HTML.new
      else raise ArgumentError, "Unsupported code format: #{format}"
      end
    end

    def render_css
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
            background-color: oklch(var(--b3));
          }
  
          .highlight .gi {
            display: inline-block;
          }
        CSS
      end
    end
  end
end
