module Docs
  module Abouts
    class ShowView < ApplicationView
      include Phlex::Rails::Helpers::LinkTo

      def view_template
        breadcrumbs do
          "Docs"
        end

        Title :"4x", :extrabold do
          "About"
        end

        render_about_section
      end

      private

      def breadcrumbs
        div class: "breadcrumbs text-sm mb-4 leading-6 font-semibold text-accent" do
          ul do
            li do
              a do
                yield
              end
            end
          end
        end
      end

      def render_about_section
        DocsSection do
          Title :"2x", :bold, as: :h2, class: "space-y-4" do
            "Why PhlexyUI?"
          end

          p do
            "PhlexyUI was born out of the admiration and the need to share with the community 2 projects that changed how we build apps: Phlex and DaisyUI."
          end

          ul class: "list-disc list-inside space-y-2" do
            li do
              "Phlex allows you to build your interfaces in Ruby, a beautiful expressive and flexible language, which means that you get to build your views in the same way."
            end

            li do
              "DaisyUI takes the power of TailwindCSS and distills it into semantic CSS classes that allows you to build beautiful interfaces with just a few lines of CSS, while allowing you to customize it with TailwindCSS on top of it."
            end
          end

          p do
            "As I used Phlex and DaisyUI more and more in my side projects, I found myself creating the same Phlex components for DaisyUI over and over. So I decided to create a gem to avoid repeating myself, while also sharing the amazing productivity boost that Phlex and DaisyUI bring to the table."
          end

          p do
            "The main idea is to be able to use all DaisyUI components as Phlex components, which means not worrying about the specific CSS and HTML structure of each component, and instead providing an easy, and even more readable and semantic way to use them. Since they're built using Ruby, another benefit is that you can easily extend and modify them to your needs."
          end
        end

        DocsSection do
          Title :"2x", :bold, as: :h2, class: "space-y-4" do
            "Vision"
          end

          p do
            "The first goal is to cover all the DaisyUI components. But afterwards, provide other useful components built on top of DaisyUI such as forms."
          end

          p do
            span do
              "Contributions are welcome! If you want to contribute to PhlexyUI, please visit the "
            end

            Link :underlined, href: "https://github.com/phlexyUI/phlexy_ui", target: "_blank" do
              "GitHub repository"
            end

            span do
              " for more details."
            end
          end
        end
      end
    end
  end
end
