require 'rails_helper'

RSpec.describe "video_technical_details/edit", type: :view do
  let(:video_technical_detail) {
    VideoTechnicalDetail.create!(
      video: nil,
      duration: "9.99",
      bitrate: 1,
      file_size: 1,
      video_stream: "MyString",
      video_codec: "MyString",
      resolution: "MyString",
      width: 1,
      height: 1,
      frame_rate: "9.99",
      audio_stream: "MyString",
      audio_codec: "MyString",
      audio_sample_rate: 1,
      audio_channels: 1
    )
  }

  before(:each) do
    assign(:video_technical_detail, video_technical_detail)
  end

  it "renders the edit video_technical_detail form" do
    render

    assert_select "form[action=?][method=?]", video_technical_detail_path(video_technical_detail), "post" do

      assert_select "input[name=?]", "video_technical_detail[video_id]"

      assert_select "input[name=?]", "video_technical_detail[duration]"

      assert_select "input[name=?]", "video_technical_detail[bitrate]"

      assert_select "input[name=?]", "video_technical_detail[file_size]"

      assert_select "input[name=?]", "video_technical_detail[video_stream]"

      assert_select "input[name=?]", "video_technical_detail[video_codec]"

      assert_select "input[name=?]", "video_technical_detail[resolution]"

      assert_select "input[name=?]", "video_technical_detail[width]"

      assert_select "input[name=?]", "video_technical_detail[height]"

      assert_select "input[name=?]", "video_technical_detail[frame_rate]"

      assert_select "input[name=?]", "video_technical_detail[audio_stream]"

      assert_select "input[name=?]", "video_technical_detail[audio_codec]"

      assert_select "input[name=?]", "video_technical_detail[audio_sample_rate]"

      assert_select "input[name=?]", "video_technical_detail[audio_channels]"
    end
  end
end
