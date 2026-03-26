require 'rails_helper'

RSpec.describe "images/index", type: :view do
  before(:each) do
    assign(:images, [
      Image.create!(
        image_source_url: "Image Source Url",
        image_file_name: "Image File Name",
        image_file_path: "Image File Path",
        image_file_size: "Image File Size",
        image_resolution: "Image Resolution",
        image_width: 2,
        image_height: 3,
        image_credit: "Image Credit",
        publication_title: "Publication Title",
        publication_month: "Publication Month",
        publication_year: 4,
        publication_url: "Publication Url",
        publicaiton_article_title: "Publicaiton Article Title",
        publication_article_scripture: "Publication Article Scripture",
        publication_chapter_number: 5,
        publication_chapter_title: "Publication Chapter Title",
        publication_page: 6,
        publication_paragraph_number: 7,
        publication_paragraph_question: "Publication Paragraph Question",
        publication_paragraph_text: "Publication Paragraph Text",
        publication_paragraph_scriptures: "Publication Paragraph Scriptures",
        publication_meeting_part: "Publication Meeting Part",
        image_caption: "Image Caption",
        image_subject_keywords: "Image Subject Keywords",
        image_bible_characters: "Image Bible Characters"
      ),
      Image.create!(
        image_source_url: "Image Source Url",
        image_file_name: "Image File Name",
        image_file_path: "Image File Path",
        image_file_size: "Image File Size",
        image_resolution: "Image Resolution",
        image_width: 2,
        image_height: 3,
        image_credit: "Image Credit",
        publication_title: "Publication Title",
        publication_month: "Publication Month",
        publication_year: 4,
        publication_url: "Publication Url",
        publicaiton_article_title: "Publicaiton Article Title",
        publication_article_scripture: "Publication Article Scripture",
        publication_chapter_number: 5,
        publication_chapter_title: "Publication Chapter Title",
        publication_page: 6,
        publication_paragraph_number: 7,
        publication_paragraph_question: "Publication Paragraph Question",
        publication_paragraph_text: "Publication Paragraph Text",
        publication_paragraph_scriptures: "Publication Paragraph Scriptures",
        publication_meeting_part: "Publication Meeting Part",
        image_caption: "Image Caption",
        image_subject_keywords: "Image Subject Keywords",
        image_bible_characters: "Image Bible Characters"
      )
    ])
  end

  it "renders a list of images" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Image Source Url".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Image File Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Image File Path".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Image File Size".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Image Resolution".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Image Credit".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Publication Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Publication Month".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Publication Url".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Publicaiton Article Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Publication Article Scripture".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Publication Chapter Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(7.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Publication Paragraph Question".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Publication Paragraph Text".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Publication Paragraph Scriptures".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Publication Meeting Part".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Image Caption".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Image Subject Keywords".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Image Bible Characters".to_s), count: 2
  end
end
