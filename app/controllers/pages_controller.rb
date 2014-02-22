class PagesController < ApplicationController
  def index
    @reps = Rep.all
    @hash = Gmaps4rails.build_markers(@reps) do |rep, marker|
      marker.lat rep.latitude
      marker.lng rep.longitude
    end
  end

  def about
  end

  def team
  end
end
