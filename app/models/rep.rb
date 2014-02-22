class Rep < ActiveRecord::Base

  geocoded_by :city_state_zip
  after_validation :geocode, :if => :city_state_zip?
end
