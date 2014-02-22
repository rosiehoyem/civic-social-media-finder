module ApplicationHelper

  def twitter_link(rep, text = "Twitter")
    rep.twitter ? link_to(text, "http://twitter.com/#{rep.twitter}", target: '_blank') : nil
  end

  def facebook_link(rep, text="Facebook")
    rep.facebook_personal ? link_to(text, "http://facebook.com/#{rep.facebook_personal}", target: '_blank') : nil
  end
end
