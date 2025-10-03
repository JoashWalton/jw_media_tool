require 'rails_helper'

RSpec.describe "morning_worship_videos/index", type: :view do
  before(:each) do
    assign(:morning_worship_videos, [
      MorningWorshipVideo.create!(
        video: nil,
        speaker_first_name: "Speaker First Name",
        speaker_last_name: "Speaker Last Name",
        theme: "Theme",
        theme_scripture: "Theme Scripture",
        theme_scripture_text: "MyText"
      ),
      MorningWorshipVideo.create!(
        video: nil,
        speaker_first_name: "Speaker First Name",
        speaker_last_name: "Speaker Last Name",
        theme: "Theme",
        theme_scripture: "Theme Scripture",
        theme_scripture_text: "MyText"
      )
    ])
  end

  it "renders a list of morning_worship_videos" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Speaker First Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Speaker Last Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Theme".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Theme Scripture".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
