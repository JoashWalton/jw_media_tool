class CreateVideoTechnicalDetails < ActiveRecord::Migration[8.0]
  def change
    create_table :video_technical_details do |t|
      t.references :video, null: false, foreign_key: true
      t.decimal :duration, precision: 15, scale: 10
      t.integer :bitrate
      t.integer :file_size
      t.string :video_stream
      t.string :video_codec
      t.string :resolution
      t.integer :width
      t.integer :height
      t.decimal :frame_rate, precision: 15, scale: 10
      t.string :audio_stream
      t.string :audio_codec
      t.integer :audio_sample_rate
      t.integer :audio_channels

      t.timestamps
    end
  end
end
