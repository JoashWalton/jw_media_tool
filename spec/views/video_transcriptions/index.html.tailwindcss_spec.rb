require 'rails_helper'

RSpec.describe "video_transcriptions/index", type: :view do
  before(:each) do
    assign(:video_transcriptions, [
      VideoTranscription.create!(
        video: nil,
        transcription_file: nil,
        language: "Language",
        model: "Model",
        output_format: "Output Format",
        transcription_output_type: "Transcription Output Type",
        transcription_text: "MyText",
        transcription_json: ""
      ),
      VideoTranscription.create!(
        video: nil,
        transcription_file: nil,
        language: "Language",
        model: "Model",
        output_format: "Output Format",
        transcription_output_type: "Transcription Output Type",
        transcription_text: "MyText",
        transcription_json: ""
      )
    ])
  end

  it "renders a list of video_transcriptions" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Language".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Model".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Output Format".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Transcription Output Type".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("".to_s), count: 2
  end
end
