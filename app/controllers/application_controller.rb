class ApplicationController < ActionController::Base
  layout -> { ApplicationLayout }

  protect_from_forgery with: :exception
end
