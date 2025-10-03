FactoryBot.define do
  factory :video_transcription do
    video { nil }
    transcription_file { nil }
    language { "MyString" }
    model { "MyString" }
    output_format { "MyString" }
    transcription_output_type { "MyString" }
    transcription_text { "MyText" }
    transcription_json { "" }
  end
end
