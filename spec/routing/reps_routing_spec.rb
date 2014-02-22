require "spec_helper"

describe RepsController do
  describe "routing" do

    it "routes to #index" do
      get("/reps").should route_to("reps#index")
    end

    it "routes to #new" do
      get("/reps/new").should route_to("reps#new")
    end

    it "routes to #show" do
      get("/reps/1").should route_to("reps#show", :id => "1")
    end

    it "routes to #edit" do
      get("/reps/1/edit").should route_to("reps#edit", :id => "1")
    end

    it "routes to #create" do
      post("/reps").should route_to("reps#create")
    end

    it "routes to #update" do
      put("/reps/1").should route_to("reps#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/reps/1").should route_to("reps#destroy", :id => "1")
    end

  end
end
