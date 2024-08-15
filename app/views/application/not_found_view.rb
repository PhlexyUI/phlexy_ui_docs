module Application
  class NotFoundView < ApplicationView
    include Phlex::Rails::Helpers::LinkTo

    def view_template
      div class: "flex flex-col justify-center items-center" do
        h1 class: "font-extrabold", style: "font-size: 20rem;" do
          "404"
        end

        p class: "-mt-8", style: "font-size: 1.8rem;" do
          "Oops, we couldn't find that!"
        end

        link_to "Maybe go back?", root_path, class: "link link-primary"
      end
    end
  end
end
