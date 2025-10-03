json.extract! video, :id, :video_file, :jw_org_url, :video_title, :video_duration, :created_at, :updated_at
json.url video_url(video, format: :json)
json.video_file url_for(video.video_file)
