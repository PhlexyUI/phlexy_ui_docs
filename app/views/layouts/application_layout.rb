# frozen_string_literal: true

class ApplicationLayout < ApplicationView
  include Phlex::Rails::Layout
  include Phlex::Rails::Helpers::TurboRefreshesWith
  include Phlex::Rails::Helpers::Flash
  include Phlex::Rails::Helpers::TurboFrameTag
  include Phlex::Rails::Helpers::ImagePath

  def initialize(title: nil)
    @title = title
  end

  def view_template(&block)
    doctype

    html class: "overscroll-auto sm:overscroll-y-none", data: {theme: helpers.session[:theme] || :light} do
      head do
        title { @title || "PhlexyUI Docs" }
        meta name: "viewport", content: "width=device-width,initial-scale=1"
        csp_meta_tag
        csrf_meta_tags

        raw helpers.vite_client_tag
        raw helpers.vite_stylesheet_tag("application", data_turbo_track: "reload")
        raw helpers.vite_javascript_tag("application", data_turbo_track: "reload", type: "module")

        turbo_refreshes_with method: :morph, scroll: :preserve

        link(
          rel: "apple-touch-icon",
          sizes: "180x180",
          href: "/apple-touch-icon.png"
        )

        link(
          rel: "icon",
          type: "image/png",
          sizes: "32x32",
          href: "/favicon-32x32.png"
        )

        link(
          rel: "icon",
          type: "image/png",
          sizes: "192x192",
          href: "/android-chrome-192x192.png"
        )

        link(
          rel: "icon",
          type: "image/png",
          sizes: "16x16",
          href: "/favicon-16x16.png"
        )

        link(
          rel: "manifest",
          href: "/site.webmanifest"
        )

        link(
          rel: "mask-icon",
          href: "/safari-pinned-tab.svg",
          color: "#c94040"
        )

        meta(
          name: "apple-mobile-web-app-title",
          content: @title || "PhlexyUI Docs"
        )

        meta(
          name: "application-name",
          content: @title || "PhlexyUI Docs"
        )

        meta(
          name: "msapplication-TileColor",
          content: "#b91d47"
        )

        meta(
          name: "msapplication-TileImage",
          content: "/mstile-144x144.png"
        )

        meta(
          name: "theme-color",
          content: "#ffffff"
        )

        # OG tags
        meta name: "description", content: "PhlexyUI is a component library built with Phlex, a Ruby gem for building fast object-oriented HTML components. On top of DaisyUI, the most popular component library for Tailwind CSS."

        # Facebook meta tags
        meta property: "og:url", content: "https://phlexyui.com/"
        meta property: "og:type", content: "website"
        meta property: "og:title", content: @title || "PhlexyUI Docs"
        meta property: "og:description", content: "PhlexyUI is a component library built with Phlex, a Ruby gem for building fast object-oriented HTML components. On top of DaisyUI, the most popular component library for Tailwind CSS."
        meta property: "og:image", content: "https://opengraph.b-cdn.net/production/images/a762fb82-9327-4beb-b556-cbd4af8e0bbc.png?token=93YAu2i2tElEJNknMrJ5s_LCoXfcDk2mRLf5Ey1WkZ8&height=630&width=1200&expires=33269950416"

        # X meta tags
        meta name: "twitter:card", content: "summary_large_image"
        meta property: "twitter:domain", content: "phlexyui.com"
        meta property: "twitter:url", content: "https://phlexyui.com/"
        meta name: "twitter:title", content: @title || "PhlexyUI Docs"
        meta name: "twitter:description", content: "PhlexyUI is a component library built with Phlex, a Ruby gem for building fast object-oriented HTML components. On top of DaisyUI, the most popular component library for Tailwind CSS."
        meta name: "twitter:image", content: "https://opengraph.b-cdn.net/production/images/a762fb82-9327-4beb-b556-cbd4af8e0bbc.png?token=93YAu2i2tElEJNknMrJ5s_LCoXfcDk2mRLf5Ey1WkZ8&height=630&width=1200&expires=33269950416"

        yield :head
      end

      body do
        main do
          render_flash

          Drawer id: :drawer, responsive: {lg: :open} do |drawer|
            drawer.toggle
            drawer.content do
              Nav(drawer:)

              content_wrapper do
                turbo_frame_tag :content, autoscroll: true do
                  yield
                end
              end
            end

            drawer.side class: "z-30 !overscroll-contain" do
              drawer.overlay
              render Sidebar.new
            end
          end
        end
      end
    end
  end

  private

  def content_wrapper(&block)
    div class: "px-4 sm:px-6 md:px-8 pb-8 mt-20" do
      yield
    end
  end

  def render_flash
    flash.each do |type, msg|
      classes = [
        "fixed",
        "top-0",
        "z-40",
        "alert",
        "rounded-none",
        (type == "alert") ? "alert-error" : "alert-info"
      ]

      div(class: classes, role: :alert) do
        msg
      end
    end
  end
end
