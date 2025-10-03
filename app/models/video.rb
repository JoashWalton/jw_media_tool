# Video Object Attributes
# * jw_org_url :string,
# * video_title :string,
# * video_duration :string,
# * local_video_file_path :string
class Video < ApplicationRecord
  has_one_attached :video_file

  has_one :video_technical_detail, dependent: :destroy
  has_one :morning_worship_videos, dependent: :destroy
  has_many :video_transcriptions, dependent: :destroy

  validates :jw_org_url, presence: true
  validates :video_title, presence: true
  validates :local_video_file_path, presence: true

  enum :video_category, {
    morning_worship: 0,
    gilead_graduation: 1,
    annual_meeting: 2
  }

  after_save :assimilate_technical_details
  after_save :assimilate_video_category

  private

  def assimilate_technical_details
    VideoTechnicalDetailsAssimilationJob.perform_later(self)
  end

  def assimilate_video_category
    case video_category
    when "morning_worship"
      MorningWorshipVideoDataAggregationJob.perform_later(self)
    when "gilead_graduation"
      GileadGraduationVideo.find_or_create_by(video: self)
    when "annual_meeting"
      AnnualMeetingVideo.find_or_create_by(video: self)
    else
      Rails.logger.info("No specific assimilation required for Video ID #{id} with category #{video_category}")
    end
  end
end
