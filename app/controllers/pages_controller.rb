class PagesController < ApplicationController
  def index
    @reps = Rep.all
    @hash = Gmaps4rails.build_markers(@reps) do |rep, marker|
      marker.lat rep.latitude
      marker.lng rep.longitude
      marker.title rep.district
      marker.infowindow infowindow(rep)
    end
  end

  def about
  end

  def team
  end

  def infowindow(rep)
    info = [view_context.link_to(rep.longname, rep_path(rep), target: '_blank')]
    info << view_context.link_to(rep.email, "mailto: #{rep.email}", target: '_blank') if rep.email
    info << view_context.twitter_link(rep)
    info << view_context.facebook_link(rep)
    info.compact.join("<br />")
  end
end
