require 'rails_helper'

RSpec.describe "morning_worship_videos/show", type: :view do
  before(:each) do
    assign(:morning_worship_video, MorningWorshipVideo.create!(
      video: nil,
      speaker_first_name: "Speaker First Name",
      speaker_last_name: "Speaker Last Name",
      theme: "Theme",
      theme_scripture: "Theme Scripture",
      theme_scripture_text: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Speaker First Name/)
    expect(rendered).to match(/Speaker Last Name/)
    expect(rendered).to match(/Theme/)
    expect(rendered).to match(/Theme Scripture/)
    expect(rendered).to match(/MyText/)
  end
end
