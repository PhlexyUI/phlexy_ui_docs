# frozen_string_literal: true

class ApplicationLayout < ApplicationView
  include Phlex::Rails::Layout
  include Phlex::Rails::Helpers::TurboRefreshesWith
  include Phlex::Rails::Helpers::Flash
  include Phlex::Rails::Helpers::TurboFrameTag

  def view_template(&block)
    doctype

    html class: "overscroll-auto sm:overscroll-none" do
      head do
        title { "PhlexyUI Docs" }
        meta name: "viewport", content: "width=device-width,initial-scale=1"
        csp_meta_tag
        csrf_meta_tags

        plain helpers.vite_client_tag
        plain helpers.vite_stylesheet_tag("application", data_turbo_track: "reload")
        plain helpers.vite_javascript_tag("application", data_turbo_track: "reload", type: "module")

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
          content: "PhlexyUI Docs"
        )

        meta(
          name: "application-name",
          content: "PhlexyUI Docs"
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

        yield :head
      end

      body do
        main do
          render_flash

          Drawer id: :drawer, lg: :open do |drawer|
            drawer.toggle
            drawer.content do
              Navbar class: "fixed top-0 z-20 bg-base-100 lg:w-[calc(100%-20rem)]" do |navbar|
                navbar.start do
                  drawer.button :ghost, :square, class: "lg:hidden" do
                    burger_svg
                  end
                end

                navbar.center do
                end

                navbar.end do
                  Button(
                    :ghost,
                    :square,
                    as: :a,
                    href: "https://github.com/phlexyUI/phlexy_ui",
                    target: "_blank"
                  ) do
                    github_svg
                  end
                end
              end

              content_wrapper do
                turbo_frame_tag :content do
                  yield
                end
              end
            end

            drawer.side class: "z-30" do
              drawer.overlay
              render Sidebar.new
            end
          end
        end
      end
    end
  end

  private

  def burger_svg
    svg(
      xmlns: "http://www.w3.org/2000/svg",
      fill: "none",
      viewbox: "0 0 24 24",
      class: "inline-block w-6 h-6 stroke-current"
    ) do |s|
      s.path(
        stroke_linecap: "round",
        stroke_linejoin: "round",
        stroke_width: "2",
        d: "M4 6h16M4 12h16M4 18h16"
      )
    end
  end

  def github_svg
    svg(
      viewbox: "0 0 16 16",
      class: "w-5 h-5",
      fill: "currentColor",
      aria_hidden: "true"
    ) do |s|
      s.path(
        d:
          "M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"
      )
    end
  end

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
