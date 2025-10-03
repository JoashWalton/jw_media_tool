require "rails_helper"

RSpec.describe MorningWorshipVideosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/morning_worship_videos").to route_to("morning_worship_videos#index")
    end

    it "routes to #new" do
      expect(get: "/morning_worship_videos/new").to route_to("morning_worship_videos#new")
    end

    it "routes to #show" do
      expect(get: "/morning_worship_videos/1").to route_to("morning_worship_videos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/morning_worship_videos/1/edit").to route_to("morning_worship_videos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/morning_worship_videos").to route_to("morning_worship_videos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/morning_worship_videos/1").to route_to("morning_worship_videos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/morning_worship_videos/1").to route_to("morning_worship_videos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/morning_worship_videos/1").to route_to("morning_worship_videos#destroy", id: "1")
    end
  end
end
