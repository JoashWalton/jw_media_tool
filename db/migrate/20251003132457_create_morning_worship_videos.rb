class CreateMorningWorshipVideos < ActiveRecord::Migration[8.0]
  def change
    create_table :morning_worship_videos do |t|
      t.references :video, null: false, foreign_key: true
      t.string :speaker_first_name
      t.string :speaker_last_name
      t.string :theme
      t.string :theme_scripture
      t.text :theme_scripture_text

      t.timestamps
    end
  end
end
