# frozen_string_literal: true

class ApplicationView < ApplicationComponent
  # The ApplicationView is an abstract class for all your views.

  # By default, it inherits from `ApplicationComponent`, but you
  # can change that to `Phlex::HTML` if you want to keep views and
  # components independent.

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
