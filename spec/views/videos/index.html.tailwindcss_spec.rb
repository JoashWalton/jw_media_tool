require 'rails_helper'

RSpec.describe "videos/index", type: :view do
  before(:each) do
    assign(:videos, [
      Video.create!(
        video_file: nil,
        jw_org_url: "Jw Org Url",
        video_title: "Video Title",
        video_duration: ""
      ),
      Video.create!(
        video_file: nil,
        jw_org_url: "Jw Org Url",
        video_title: "Video Title",
        video_duration: ""
      )
    ])
  end

  it "renders a list of videos" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Jw Org Url".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Video Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("".to_s), count: 2
  end
end
