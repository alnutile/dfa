require "spec_helper"

describe SpeakerRequestsController do
  describe "routing" do

    it "routes to #index" do
      get("/speaker_requests").should route_to("speaker_requests#index")
    end

    it "routes to #new" do
      get("/speaker_requests/new").should route_to("speaker_requests#new")
    end

    it "routes to #show" do
      get("/speaker_requests/1").should route_to("speaker_requests#show", :id => "1")
    end

    it "routes to #edit" do
      get("/speaker_requests/1/edit").should route_to("speaker_requests#edit", :id => "1")
    end

    it "routes to #create" do
      post("/speaker_requests").should route_to("speaker_requests#create")
    end

    it "routes to #update" do
      put("/speaker_requests/1").should route_to("speaker_requests#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/speaker_requests/1").should route_to("speaker_requests#destroy", :id => "1")
    end

  end
end
