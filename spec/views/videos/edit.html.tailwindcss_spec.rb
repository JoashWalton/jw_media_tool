require 'rails_helper'

RSpec.describe "videos/edit", type: :view do
  let(:video) {
    Video.create!(
      video_file: nil,
      jw_org_url: "MyString",
      video_title: "MyString",
      video_duration: ""
    )
  }

  before(:each) do
    assign(:video, video)
  end

  it "renders the edit video form" do
    render

    assert_select "form[action=?][method=?]", video_path(video), "post" do

      assert_select "input[name=?]", "video[video_file]"

      assert_select "input[name=?]", "video[jw_org_url]"

      assert_select "input[name=?]", "video[video_title]"

      assert_select "input[name=?]", "video[video_duration]"
    end
  end
end
