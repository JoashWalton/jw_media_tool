class AddLocalVideoFilePathToVideos < ActiveRecord::Migration[8.0]
  def change
    add_column :videos, :local_video_file_path, :string
  end
end
