module Docs
  module Configurations
    class ShowView < ApplicationView
      include Phlex::Rails::Helpers::LinkTo

      def view_template
        breadcrumbs do
          "Docs"
        end

        Title :"4xl", :extrabold do
          "Configuration"
        end

        render_prefix_section
        render_custom_modifiers_section
      end

      private

      def render_prefix_section
        DocsSection do
          Title :"2xl", :bold, as: :h2 do
            "Prefix"
          end

          p do
            "You can change the prefix of the modifiers by setting the `prefix` option. This is useful if you want to introduce PhlexyUI into a project without clashing with existing CSS classes."
          end

          Code(:ruby, source: <<~RB, mockup: true) do
            # config/initializers/phlexy_ui.rb
            PhlexyUI.configure do |config|
              config.prefix = "foo-"
            end
          RB
          end

          p do
            "This will add the `foo-` prefix to all the modifiers. For example:"
          end

          Code(:ruby, source: <<~RB, mockup: true) do
            Card :compact do
            end
          RB
          end

          p do
            "Will render as:"
          end

          Code(:html, source: <<~HTML, mockup: true) do
            <section class="foo-card foo-card-compact"></section>
          HTML
          end
        end
      end

      def render_custom_modifiers_section
        DocsSection do
          Title :"2xl", :bold, as: :h2 do
            "Custom Modifiers"
          end

          Title :xl, :bold, as: :h3 do
            "Component specific modifiers"
          end

          p do
            "PhlexyUI allows you to add custom modifiers to your components. These modifiers are used to add custom styles to your components. For example:"
          end

          Code(:ruby, source: <<~RB, mockup: true) do
            # config/initializers/phlexy_ui.rb
            PhlexyUI.configure do |config|
              config.modifiers.add(
                :my_modifier,
                component: PhlexyUI::Card,
                classes: "w-96 shadow-xl"
              )
            end
          RB
          end

          p do
            "This will add a `my-modifier` modifier to the `Card` component. You can then use this modifier in your components like this:"
          end

          Code(:ruby, source: <<~RB, mockup: true) do
            Card :my_modifier do
            end
          RB
          end

          p do
            "Which will render as:"
          end

          Code(:html, source: <<~HTML, mockup: true) do
            <section class="card w-96 shadow-xl"></section>
          HTML
          end

          Title :xl, :bold, as: :h3 do
            "Global modifiers"
          end

          p do
            "You can also add a modifier to all components by adding a global modifier. For example:"
          end

          Code(:ruby, source: <<~RB, mockup: true) do
            # config/initializers/phlexy_ui.rb
            PhlexyUI.configure do |config|
              config.modifiers.add(
                :my_global_modifier,
                classes: "w-96 shadow-xl"
              )
            end
          RB
          end

          p do
            "This will add a `my_global_modifier  ` modifier to all components. For example:"
          end

          Code(:ruby, source: <<~RB, mockup: true) do
            Card :my_global_modifier do
            end

            Button :my_global_modifier do
            end
          RB
          end

          p do
            "Which will render as:"
          end

          Code(:html, source: <<~HTML, mockup: true) do
            <section class="card w-96 shadow-xl"></section>
            <button class="button w-96 shadow-xl"></button>
          HTML
          end
        end
      end
    end
  end
end
