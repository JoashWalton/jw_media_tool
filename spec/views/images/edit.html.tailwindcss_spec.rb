require 'rails_helper'

RSpec.describe "images/edit", type: :view do
  let(:image) {
    Image.create!(
      image_source_url: "MyString",
      image_file_name: "MyString",
      image_file_path: "MyString",
      image_file_size: "MyString",
      image_resolution: "MyString",
      image_width: 1,
      image_height: 1,
      image_credit: "MyString",
      publication_title: "MyString",
      publication_month: "MyString",
      publication_year: 1,
      publication_url: "MyString",
      publicaiton_article_title: "MyString",
      publication_article_scripture: "MyString",
      publication_chapter_number: 1,
      publication_chapter_title: "MyString",
      publication_page: 1,
      publication_paragraph_number: 1,
      publication_paragraph_question: "MyString",
      publication_paragraph_text: "MyString",
      publication_paragraph_scriptures: "MyString",
      publication_meeting_part: "MyString",
      image_caption: "MyString",
      image_subject_keywords: "MyString",
      image_bible_characters: "MyString"
    )
  }

  before(:each) do
    assign(:image, image)
  end

  it "renders the edit image form" do
    render

    assert_select "form[action=?][method=?]", image_path(image), "post" do

      assert_select "input[name=?]", "image[image_source_url]"

      assert_select "input[name=?]", "image[image_file_name]"

      assert_select "input[name=?]", "image[image_file_path]"

      assert_select "input[name=?]", "image[image_file_size]"

      assert_select "input[name=?]", "image[image_resolution]"

      assert_select "input[name=?]", "image[image_width]"

      assert_select "input[name=?]", "image[image_height]"

      assert_select "input[name=?]", "image[image_credit]"

      assert_select "input[name=?]", "image[publication_title]"

      assert_select "input[name=?]", "image[publication_month]"

      assert_select "input[name=?]", "image[publication_year]"

      assert_select "input[name=?]", "image[publication_url]"

      assert_select "input[name=?]", "image[publicaiton_article_title]"

      assert_select "input[name=?]", "image[publication_article_scripture]"

      assert_select "input[name=?]", "image[publication_chapter_number]"

      assert_select "input[name=?]", "image[publication_chapter_title]"

      assert_select "input[name=?]", "image[publication_page]"

      assert_select "input[name=?]", "image[publication_paragraph_number]"

      assert_select "input[name=?]", "image[publication_paragraph_question]"

      assert_select "input[name=?]", "image[publication_paragraph_text]"

      assert_select "input[name=?]", "image[publication_paragraph_scriptures]"

      assert_select "input[name=?]", "image[publication_meeting_part]"

      assert_select "input[name=?]", "image[image_caption]"

      assert_select "input[name=?]", "image[image_subject_keywords]"

      assert_select "input[name=?]", "image[image_bible_characters]"
    end
  end
end
