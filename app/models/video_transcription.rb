class VideoTranscription < ApplicationRecord
  belongs_to :video
  has_one_attached :transcription_file
end
