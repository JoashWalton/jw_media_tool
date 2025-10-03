require "rails_helper"

RSpec.describe VideoTranscriptionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/video_transcriptions").to route_to("video_transcriptions#index")
    end

    it "routes to #new" do
      expect(get: "/video_transcriptions/new").to route_to("video_transcriptions#new")
    end

    it "routes to #show" do
      expect(get: "/video_transcriptions/1").to route_to("video_transcriptions#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/video_transcriptions/1/edit").to route_to("video_transcriptions#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/video_transcriptions").to route_to("video_transcriptions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/video_transcriptions/1").to route_to("video_transcriptions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/video_transcriptions/1").to route_to("video_transcriptions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/video_transcriptions/1").to route_to("video_transcriptions#destroy", id: "1")
    end
  end
end
