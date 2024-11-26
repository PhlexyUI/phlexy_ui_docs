class ExamplesController < ApplicationController
  before_action :verify_component_exists

  def show
    render view_class.new(component:)
  end

  private

  def verify_component_exists
    return if view_class && component

    render Application::NotFoundView.new, status: :not_found
  end

  def view_class
    "Examples::#{component_name.classify.pluralize}::ShowView".safe_constantize
  end

  def component_name
    params[:component]
  end

  def component
    Component.from_name(component_name.to_s.camelize)
  end
end
