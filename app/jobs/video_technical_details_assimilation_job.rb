class VideoTechnicalDetailsAssimilationJob < ApplicationJob
  queue_as :low

  def perform(video_object)
    if video_file = FFMPEG::Movie.new(video_object.local_video_file_path)

      VideoTechnicalDetail.find_or_create_by(
        video: video_object,
        duration: video_file.duration,
        bitrate: video_file.bitrate,
        file_size: video_file.size,
        video_stream: video_file.video_stream,
        video_codec: video_file.video_codec,
        resolution: video_file.resolution,
        width: video_file.width,
        height: video_file.height,
        frame_rate: video_file.frame_rate,
        audio_stream: video_file.audio_stream,
        audio_codec: video_file.audio_codec,
        audio_sample_rate: video_file.audio_sample_rate,
        audio_channels: video_file.audio_channels
      ).save!

      Rails.logger.info("Successfully processed video technical details for Video ID #{video_object.id}")
    else
      Rails.logger.error("Failed to process video file for Video ID #{video_object.id}")
    end
  end
end
