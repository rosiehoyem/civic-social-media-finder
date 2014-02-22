# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'
require 'open-uri'

uri = "https://docs.google.com/spreadsheet/pub?key=0AhMzTTTIF_tudGZmcGFQTFdDS1V5RVd3ZTc1M19CeWc&output=csv"

CSV.parse(open(uri).read, headers: true) do |row|
  rep = Rep.where(district: row['district_id']).first_or_initialize
  rep.partypol = row['partypol']
  rep.fname = row['fname']
  rep.lname = row['lname']
  rep.longname = row['longname']
  rep.city_state_zip = row['interimmailing_city'] + ", MN " + row['interim_mailing_zip'] 
  rep.twitter = row['twitter']
  rep.facebook_personal = row['facebook_personal']
  rep.you_tube = row['you_tube']
  rep.linked_in = row['linked_in']
  rep.google_plus = row['google+']
  rep.save!
  puts "Updated info for #{rep.to_s}"
end
