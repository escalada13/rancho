require "spec_helper"

describe HtscdtsController do
  describe "routing" do

    it "routes to #index" do
      get("/htscdts").should route_to("htscdts#index")
    end

    it "routes to #new" do
      get("/htscdts/new").should route_to("htscdts#new")
    end

    it "routes to #show" do
      get("/htscdts/1").should route_to("htscdts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/htscdts/1/edit").should route_to("htscdts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/htscdts").should route_to("htscdts#create")
    end

    it "routes to #update" do
      put("/htscdts/1").should route_to("htscdts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/htscdts/1").should route_to("htscdts#destroy", :id => "1")
    end

  end
end
