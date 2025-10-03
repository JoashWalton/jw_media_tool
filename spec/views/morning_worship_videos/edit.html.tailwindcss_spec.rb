require 'rails_helper'

RSpec.describe "morning_worship_videos/edit", type: :view do
  let(:morning_worship_video) {
    MorningWorshipVideo.create!(
      video: nil,
      speaker_first_name: "MyString",
      speaker_last_name: "MyString",
      theme: "MyString",
      theme_scripture: "MyString",
      theme_scripture_text: "MyText"
    )
  }

  before(:each) do
    assign(:morning_worship_video, morning_worship_video)
  end

  it "renders the edit morning_worship_video form" do
    render

    assert_select "form[action=?][method=?]", morning_worship_video_path(morning_worship_video), "post" do

      assert_select "input[name=?]", "morning_worship_video[video_id]"

      assert_select "input[name=?]", "morning_worship_video[speaker_first_name]"

      assert_select "input[name=?]", "morning_worship_video[speaker_last_name]"

      assert_select "input[name=?]", "morning_worship_video[theme]"

      assert_select "input[name=?]", "morning_worship_video[theme_scripture]"

      assert_select "textarea[name=?]", "morning_worship_video[theme_scripture_text]"
    end
  end
end
