require 'spec_helper'

describe PagesController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'team'" do
    it "returns http success" do
      get 'team'
      response.should be_success
    end
  end

end
