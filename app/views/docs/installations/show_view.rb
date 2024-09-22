module Docs
  module Installations
    class ShowView < ApplicationView
      include Phlex::Rails::Helpers::LinkTo

      def view_template
        breadcrumbs do
          "Docs"
        end

        Title :"4xl", :extrabold do
          "Get started with PhlexyUI"
        end

        render_summary
        render_css_dependencies_section
        render_ruby_dependencies_section
      end

      private

      def render_summary
        DocsSection do
          Title :lg, as: :h2, class: "space-y-4" do
            p do
              "PhlexyUI is a component library built with Phlex, a Ruby gem for
                  building fast object-oriented HTML components. On top of
                  DaisyUI, the most popular component library for Tailwind CSS."
            end

            p do
              "You'll need to install TailwindCSS, DaisyUI, and Phlex for
                  PhlexyUI to work."
            end
          end
        end
      end

      def render_css_dependencies_section
        Title :"2xl", :bold, as: :h3 do
          "1. Install CSS dependencies"
        end

        DocsSection do
          p do
            "You can install TailwindCSS and DaisyUI either via a JS bundler or via importmaps."
          end
        end

        Tabs :bordered, :lifted, id: :installation, class: "mb-8" do |tabs|
          tabs.tab "JS Bundler", :open, class: "!w-32" do |tab|
            tab.content class: "bg-base-100 border-base-300 rounded-box p-6" do
              Title :lg, :bold, as: :h4 do
                "TailwindCSS"
              end

              DocsSection do
                p do
                  plain "Install TailwindCSS by following the instructions in the "

                  link_to "TailwindCSS documentation,",
                    "https://tailwindcss.com/docs/installation",
                    class: "link link-primary", target: "_blank"

                  plain " using either the Tailwind CLI or PostCSS."
                end
              end

              Title :lg, :bold, as: :h4 do
                "DaisyUI"
              end

              DocsSection class: "mb-0" do
                p do
                  plain "Install DaisyUI by following the instructions in the "

                  link_to "DaisyUI documentation",
                    "https://daisyui.com/docs/install/",
                    class: "link link-primary", target: "_blank"

                  plain " as a Node package."
                end
              end
            end
          end

          tabs.tab "Importmaps" do |tab|
            tab.content class: "bg-base-100 border-base-300 rounded-box p-6 pe-32" do
              Title :lg, :bold, as: :h4 do
                "TailwindCSS with DaisyUI"
              end

              DocsSection do
                p do
                  plain "You'll need to download a TailwindCSS standalone CLI that
                comes bundled with DaisyUI by following the instructions in
                the "

                  link_to "tailwind-cli-extra repo.",
                    "https://github.com/dobicinaitis/tailwind-cli-extra",
                    class: "link link-primary", target: "_blank"
                end

                p do
                  "Afterwards, place it somewhere in your project, e.g. in the
                bin directory."
                end

                p do
                  plain "If you want to compile the standalone TailwindCSS CLI
                with DaisyUI yourself, you can follow the instructions "

                  link_to "here.",
                    "https://github.com/tailwindlabs/tailwindcss/" \
                      "discussions/12294#discussioncomment-8268378",
                    class: "link link-primary", target: "_blank"
                end
              end

              Title :lg, :bold, as: :h4 do
                "tailwindcss-rails gem"
              end

              DocsSection class: "mb-0" do
                p do
                  "Install tailwindcss-rails gem for Rails to
                automatically include your TailwindCSS stylesheets when the
                asset pipeline compiles your assets."
                end

                p do
                  plain "For this, you'll need to install the gem by following the
                instructions in the "

                  link_to "tailwindcss-rails repo.",
                    "https://github.com/rails/tailwindcss-rails",
                    class: "link link-primary", target: "_blank"
                end

                p do
                  "Finally, you'll need to set the TAILWINDCSS_INSTALL_DIR
                environment variable in your Rails app pointing to the directory
                where you plaed the binary from the tailwind-cli-extra repo
                mentioned above. e.g. TAILWINDCSS_INSTALL_DIR=bin"
                end
              end
            end
          end
        end
      end

      def render_ruby_dependencies_section
        Title :"2xl", :bold, as: :h3 do
          "2. Install Ruby dependencies"
        end

        Title :lg, :bold, as: :h4 do
          "Install Phlex"
        end

        DocsSection do
          p do
            plain "Install Phlex by following the instructions in the "

            link_to "Phlex documentation.",
              "https://www.phlex.fun/#rails-introduction",
              class: "link link-primary", target: "_blank"
          end
        end

        Title :lg, :bold, as: :h4 do
          "Install PhlexyUI"
        end

        DocsSection do
          p do
            "1. Add the PhlexyUI gem to your Gemfile:"
          end

          Code(:shell, source: <<~RB) do
            bundle add phlexy_ui
          RB
          end

          p do
            "2. Include the PhlexyUI module in ApplicationComponent:"
          end

          Code(:ruby, source: <<~RB) do
            class ApplicationComponent < Phlex::HTML
              include PhlexyUI
            end
          RB
          end

          p do
            "3. Update your tailwind.config.js file to include PhlexyUI styles:"
          end

          Code(:javascript, source: <<~JS) do
            const execSync = require("child_process").execSync;
            const outputPhlexyUI = execSync("bundle show phlexy_ui", { encoding: "utf-8" });
            const phlexyUIPath = outputPhlexyUI.trim() + "/**/*.rb";
            
            module.exports = {
              content: [
                // ... other paths
                phlexyUIPath,
              ],
            };
          JS
          end

          p do
            "4. Update your tailwind.config.js file to detect
          TailwindCSS classes in Ruby files."
          end

          Code(:javascript, source: <<~JS) do
            module.exports = {
              content: [
                // ... other paths
                // 
                // Note the "rb" extension at the end
                "./app/views/**/*.{erb,haml,html,slim,rb}",
              ],
            };
          JS
          end
        end
      end

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
    end
  end
end
