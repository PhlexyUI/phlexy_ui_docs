class ExamplesController < ApplicationController
  before_action :verify_component_exists

  def show
    render view_class.new(component:)
  end

  private

  def verify_component_exists
    return if view_class

    render Application::NotFoundView.new, status: :not_found
  end

  def view_class
    case component_name.to_sym
    when :card then Examples::Cards::ShowView
    end
  end

  def component_name
    params[:component]
  end

  def component
    Component.from_name(component_name)
  end
end
