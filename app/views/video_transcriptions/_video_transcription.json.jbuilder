json.extract! video_transcription, :id, :video_id, :transcription_file, :language, :model, :output_format, :transcription_output_type, :transcription_text, :transcription_json, :created_at, :updated_at
json.url video_transcription_url(video_transcription, format: :json)
json.transcription_file url_for(video_transcription.transcription_file)
