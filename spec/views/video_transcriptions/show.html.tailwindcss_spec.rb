require 'rails_helper'

RSpec.describe "video_transcriptions/show", type: :view do
  before(:each) do
    assign(:video_transcription, VideoTranscription.create!(
      video: nil,
      transcription_file: nil,
      language: "Language",
      model: "Model",
      output_format: "Output Format",
      transcription_output_type: "Transcription Output Type",
      transcription_text: "MyText",
      transcription_json: ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Language/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/Output Format/)
    expect(rendered).to match(/Transcription Output Type/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
