require 'rails_helper'

RSpec.describe "video_transcriptions/new", type: :view do
  before(:each) do
    assign(:video_transcription, VideoTranscription.new(
      video: nil,
      transcription_file: nil,
      language: "MyString",
      model: "MyString",
      output_format: "MyString",
      transcription_output_type: "MyString",
      transcription_text: "MyText",
      transcription_json: ""
    ))
  end

  it "renders new video_transcription form" do
    render

    assert_select "form[action=?][method=?]", video_transcriptions_path, "post" do

      assert_select "input[name=?]", "video_transcription[video_id]"

      assert_select "input[name=?]", "video_transcription[transcription_file]"

      assert_select "input[name=?]", "video_transcription[language]"

      assert_select "input[name=?]", "video_transcription[model]"

      assert_select "input[name=?]", "video_transcription[output_format]"

      assert_select "input[name=?]", "video_transcription[transcription_output_type]"

      assert_select "textarea[name=?]", "video_transcription[transcription_text]"

      assert_select "input[name=?]", "video_transcription[transcription_json]"
    end
  end
end
