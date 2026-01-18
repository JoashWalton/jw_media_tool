class MorningWorshipVideoDataAggregationJob < ApplicationJob
  queue_as :default

  def perform(video)
    if video_file = FFMPEG::Movie.new(video_object.local_video_file_path)
      if video_file.metadata[:format][:tags][:title].present?
        title = video_file.metadata[:format][:tags][:title]
        if match_data = title.match(MorningWorshipVideo::MW_TITLE_REGEX)
          speaker_first_name = match_data[1]
          speaker_last_name = match_data[2]
          theme = match_data[3]
          theme_scripture = match_data[4]

          MorningWorshipVideo.find_or_create_by(
            video: video,
            speaker_first_name: speaker_first_name,
            speaker_last_name: speaker_last_name,
            theme: theme,
            theme_scripture: theme_scripture
          ).save!

          Rails.logger.info("Successfully processed morning worship video data for Video ID #{video.id}")
        else
          Rails.logger.error("Title format does not match expected pattern for Video ID #{video.id}")
        end
      else
        Rails.logger.error("No title metadata found for Video ID #{video.id}")
      end
    end
  end
end

# metadata[:format][:tags][:title]
