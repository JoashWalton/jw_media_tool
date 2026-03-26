class CreateImages < ActiveRecord::Migration[8.1]
  def change
    create_table :images do |t|
      t.string :image_source_url
      t.string :image_file_name
      t.string :image_file_path
      t.string :image_file_size
      t.string :image_resolution
      t.integer :image_width
      t.integer :image_height
      t.string :image_credit
      t.string :publication_title
      t.string :publication_month
      t.integer :publication_year
      t.string :publication_url
      t.string :publicaiton_article_title
      t.string :publication_article_scripture
      t.integer :publication_chapter_number
      t.string :publication_chapter_title
      t.integer :publication_page
      t.integer :publication_paragraph_number
      t.string :publication_paragraph_question
      t.string :publication_paragraph_text
      t.string :publication_paragraph_scriptures, array: true, default: []
      t.string :publication_meeting_part
      t.string :image_caption
      t.string :image_subject_keywords, array: true, default: []
      t.string :image_bible_characters, array: true, default: []

      t.timestamps
    end
  end
end
