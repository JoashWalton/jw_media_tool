require 'rails_helper'

RSpec.describe "videos/show", type: :view do
  before(:each) do
    assign(:video, Video.create!(
      video_file: nil,
      jw_org_url: "Jw Org Url",
      video_title: "Video Title",
      video_duration: ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Jw Org Url/)
    expect(rendered).to match(/Video Title/)
    expect(rendered).to match(//)
  end
end
