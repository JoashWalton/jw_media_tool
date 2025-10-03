require 'rails_helper'

RSpec.describe "video_technical_details/show", type: :view do
  before(:each) do
    assign(:video_technical_detail, VideoTechnicalDetail.create!(
      video: nil,
      duration: "9.99",
      bitrate: 2,
      file_size: 3,
      video_stream: "Video Stream",
      video_codec: "Video Codec",
      resolution: "Resolution",
      width: 4,
      height: 5,
      frame_rate: "9.99",
      audio_stream: "Audio Stream",
      audio_codec: "Audio Codec",
      audio_sample_rate: 6,
      audio_channels: 7
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Video Stream/)
    expect(rendered).to match(/Video Codec/)
    expect(rendered).to match(/Resolution/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Audio Stream/)
    expect(rendered).to match(/Audio Codec/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
  end
end
