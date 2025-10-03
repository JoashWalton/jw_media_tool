class CreateVideos < ActiveRecord::Migration[8.0]
  def change
    create_table :videos do |t|
      t.string :jw_org_url
      t.string :video_title
      t.interval :video_duration

      t.timestamps
    end
  end
end
