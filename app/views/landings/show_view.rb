module Landings
  class ShowView < ApplicationView
    include Phlex::Rails::Helpers::ImagePath

    def view_template
      div class: "w-full flex items-center justify-center mb-8" do
        div class: "flex flex-col items-center justify-center gap-12 max-w-4xl" do
          h1 class: "text-6xl font-bold" do
            span do
              "A "
            end
            span class: "text-rose-600" do
              "Ruby"
            end

            span do
              " component library for "
            end

            span class: "text-teal-500" do
              "DaisyUI"
            end

            span do
              " using "
            end

            span class: "text-yellow-500" do
              "Phlex"
            end
          end

          h2 class: "text-xl" do
            <<~TXT
              PhlexyUI is a component library built with Phlex, a Ruby gem for 
              building fast object-oriented HTML components. On top of DaisyUI, 
              the most popular component library for Tailwind CSS.
            TXT
          end

          div class: "flex gap-4 self-start" do
            Button(
              :outline,
              as: :a,
              href: examples_path(:button),
              data: {turbo_frame: :_top}
            ) do
              "Browse components"
            end

            Button(
              :primary,
              as: :a,
              href: docs_path(:installation),
              data: {turbo_frame: :_top}
            ) do
              "Get started"
            end
          end
        end
      end

      render Examples::DemoComponent.new(
        component: Component.from_name("Card"),
        title: "Card",
        example_method: method(:example)
      )
    end

    private

    def example
      Card :base_100, class: "shadow-xl" do |card|
        figure do
          img(src:)
        end

        card.body do
          card.title do
            "Shoes!"
          end

          p do
            "If a dog chews shoes whose shoes does he choose?"
          end

          card.actions class: "justify-end" do
            Button :primary do
              "Buy Now"
            end
          end
        end
      end
    end

    def src
      image_path "green_sneaker.webp"
    end
  end
end
