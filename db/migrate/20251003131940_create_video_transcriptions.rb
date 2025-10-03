class CreateVideoTranscriptions < ActiveRecord::Migration[8.0]
  def change
    create_table :video_transcriptions do |t|
      t.references :video, null: false, foreign_key: true
      t.string :language, default: "en"
      t.string :model
      t.string :output_format
      t.string :transcription_output_type
      t.text :transcription_text
      t.jsonb :transcription_json

      t.timestamps
    end
  end
end
