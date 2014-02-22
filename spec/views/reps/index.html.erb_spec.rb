require 'spec_helper'

describe "reps/index" do
  before(:each) do
    assign(:reps, [
      stub_model(Rep,
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
      ),
      stub_model(Rep,
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
      )
    ])
  end

  it "renders a list of reps" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "District".to_s, :count => 2
    assert_select "tr>td", :text => "Partypol".to_s, :count => 2
    assert_select "tr>td", :text => "Fname".to_s, :count => 2
    assert_select "tr>td", :text => "Lname".to_s, :count => 2
    assert_select "tr>td", :text => "Longname".to_s, :count => 2
    assert_select "tr>td", :text => "City State Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => "Facebook Personal".to_s, :count => 2
    assert_select "tr>td", :text => "You Tube".to_s, :count => 2
    assert_select "tr>td", :text => "Linked In".to_s, :count => 2
    assert_select "tr>td", :text => "Google Plus".to_s, :count => 2
  end
end
