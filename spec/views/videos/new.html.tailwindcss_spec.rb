require 'rails_helper'

RSpec.describe "videos/new", type: :view do
  before(:each) do
    assign(:video, Video.new(
      video_file: nil,
      jw_org_url: "MyString",
      video_title: "MyString",
      video_duration: ""
    ))
  end

  it "renders new video form" do
    render

    assert_select "form[action=?][method=?]", videos_path, "post" do

      assert_select "input[name=?]", "video[video_file]"

      assert_select "input[name=?]", "video[jw_org_url]"

      assert_select "input[name=?]", "video[video_title]"

      assert_select "input[name=?]", "video[video_duration]"
    end
  end
end
