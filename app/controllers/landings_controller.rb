class LandingsController < ApplicationController
  def show
    render Landings::ShowView.new
  end
end
