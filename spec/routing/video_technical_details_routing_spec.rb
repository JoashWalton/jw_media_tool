require "rails_helper"

RSpec.describe VideoTechnicalDetailsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/video_technical_details").to route_to("video_technical_details#index")
    end

    it "routes to #new" do
      expect(get: "/video_technical_details/new").to route_to("video_technical_details#new")
    end

    it "routes to #show" do
      expect(get: "/video_technical_details/1").to route_to("video_technical_details#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/video_technical_details/1/edit").to route_to("video_technical_details#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/video_technical_details").to route_to("video_technical_details#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/video_technical_details/1").to route_to("video_technical_details#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/video_technical_details/1").to route_to("video_technical_details#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/video_technical_details/1").to route_to("video_technical_details#destroy", id: "1")
    end
  end
end
