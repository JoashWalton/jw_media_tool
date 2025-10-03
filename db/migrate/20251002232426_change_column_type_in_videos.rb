class ChangeColumnTypeInVideos < ActiveRecord::Migration[8.0]
  def change
    change_column :videos, :video_duration, :string
  end
end
