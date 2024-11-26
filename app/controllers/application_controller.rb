class ApplicationController < ActionController::Base
  layout -> { ApplicationLayout.new(title:) }

  protect_from_forgery with: :exception

  def title
    nil
  end
end
