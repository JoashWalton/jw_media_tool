FactoryBot.define do
  factory :morning_worship_video do
    video { nil }
    speaker_first_name { "MyString" }
    speaker_last_name { "MyString" }
    theme { "MyString" }
    theme_scripture { "MyString" }
    theme_scripture_text { "MyText" }
  end
end
