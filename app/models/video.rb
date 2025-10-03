# Video Object Attributes
# * jw_org_url :string,
# * video_title :string,
# * video_duration :string,
class Video < ApplicationRecord
  has_one_attached :video_file
  has_one :video_technical_detail, dependent: :destroy
  has_many :video_transcriptions, dependent: :destroy
  has_many :morning_worship_videos, dependent: :destroy
end
