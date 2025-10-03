class AddVideoCategoryToVideos < ActiveRecord::Migration[8.0]
  def change
    add_column :videos, :video_category, :integer, default: 0
  end
end
