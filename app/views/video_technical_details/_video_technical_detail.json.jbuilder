json.extract! video_technical_detail, :id, :video_id, :duration, :bitrate, :file_size, :video_stream, :video_codec, :resolution, :width, :height, :frame_rate, :audio_stream, :audio_codec, :audio_sample_rate, :audio_channels, :created_at, :updated_at
json.url video_technical_detail_url(video_technical_detail, format: :json)
