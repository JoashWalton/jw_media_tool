FactoryBot.define do
  factory :video_technical_detail do
    video { nil }
    duration { "9.99" }
    bitrate { 1 }
    file_size { 1 }
    video_stream { "MyString" }
    video_codec { "MyString" }
    resolution { "MyString" }
    width { 1 }
    height { 1 }
    frame_rate { "9.99" }
    audio_stream { "MyString" }
    audio_codec { "MyString" }
    audio_sample_rate { 1 }
    audio_channels { 1 }
  end
end
