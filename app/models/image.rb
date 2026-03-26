# Image Attributes
# id: integer
# image_source_url: string
# image_file_name: string
# image_file_path: string
# image_file_size: string
# image_resolution: string
# image_width: integer
# image_height: integer
# image_credit: string
# publication_title: string
# publication_month: string
# publication_year: integer
# publication_url: string
# publicaiton_article_title: string
# publication_article_scripture: string
# publication_chapter_number: integer
# publication_chapter_title: string
# publication_page: integer
# publication_paragraph_number: integer
# publication_paragraph_question: string
# publication_paragraph_text: string
# publication_paragraph_scriptures: string
# publication_meeting_part: string
# image_caption: string
# image_subject_keywords: string
# image_bible_characters: string
# created_at: datetime
# updated_at: datetime
class Image < ApplicationRecord
  has_one_attached :image_file
end
