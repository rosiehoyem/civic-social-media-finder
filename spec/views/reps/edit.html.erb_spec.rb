require 'spec_helper'

describe "reps/edit" do
  before(:each) do
    @rep = assign(:rep, stub_model(Rep,
      :district_id => "MyString",
      :partypol => "MyString",
      :fname => "MyString",
      :lname => "MyString",
      :longname => "MyString",
      :city_state_zip => "MyString",
      :twitter => "MyString",
      :facebook_personal => "MyString",
      :you_tube => "MyString",
      :linked_in => "MyString",
      :google_plus => "MyString"
    ))
  end

  it "renders the edit rep form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", rep_path(@rep), "post" do
      assert_select "input#rep_district_id[name=?]", "rep[district_id]"
      assert_select "input#rep_partypol[name=?]", "rep[partypol]"
      assert_select "input#rep_fname[name=?]", "rep[fname]"
      assert_select "input#rep_lname[name=?]", "rep[lname]"
      assert_select "input#rep_longname[name=?]", "rep[longname]"
      assert_select "input#rep_city_state_zip[name=?]", "rep[city_state_zip]"
      assert_select "input#rep_twitter[name=?]", "rep[twitter]"
      assert_select "input#rep_facebook_personal[name=?]", "rep[facebook_personal]"
      assert_select "input#rep_you_tube[name=?]", "rep[you_tube]"
      assert_select "input#rep_linked_in[name=?]", "rep[linked_in]"
      assert_select "input#rep_google_plus[name=?]", "rep[google_plus]"
    end
  end
end
