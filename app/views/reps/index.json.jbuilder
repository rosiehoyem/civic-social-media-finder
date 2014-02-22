json.array!(@reps) do |rep|
  json.extract! rep, :id, :district_id, :partypol, :fname, :lname, :longname, :city_state_zip, :twitter, :facebook_personal, :you_tube, :linked_in, :google_plus
  json.url rep_url(rep, format: :json)
end
