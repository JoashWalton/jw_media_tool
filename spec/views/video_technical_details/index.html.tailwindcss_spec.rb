require 'rails_helper'

RSpec.describe "video_technical_details/index", type: :view do
  before(:each) do
    assign(:video_technical_details, [
      VideoTechnicalDetail.create!(
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
      ),
      VideoTechnicalDetail.create!(
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
      )
    ])
  end

  it "renders a list of video_technical_details" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Video Stream".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Video Codec".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Resolution".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Audio Stream".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Audio Codec".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(7.to_s), count: 2
  end
end
