require 'spec_helper'

describe "reps/show" do
  before(:each) do
    @rep = assign(:rep, stub_model(Rep,
      :district_id => "District",
      :partypol => "Partypol",
      :fname => "Fname",
      :lname => "Lname",
      :longname => "Longname",
      :city_state_zip => "City State Zip",
      :twitter => "Twitter",
      :facebook_personal => "Facebook Personal",
      :you_tube => "You Tube",
      :linked_in => "Linked In",
      :google_plus => "Google Plus"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/District/)
    rendered.should match(/Partypol/)
    rendered.should match(/Fname/)
    rendered.should match(/Lname/)
    rendered.should match(/Longname/)
    rendered.should match(/City State Zip/)
    rendered.should match(/Twitter/)
    rendered.should match(/Facebook Personal/)
    rendered.should match(/You Tube/)
    rendered.should match(/Linked In/)
    rendered.should match(/Google Plus/)
  end
end
