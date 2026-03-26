require 'rails_helper'

RSpec.describe "images/show", type: :view do
  before(:each) do
    assign(:image, Image.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Image Source Url/)
    expect(rendered).to match(/Image File Name/)
    expect(rendered).to match(/Image File Path/)
    expect(rendered).to match(/Image File Size/)
    expect(rendered).to match(/Image Resolution/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Image Credit/)
    expect(rendered).to match(/Publication Title/)
    expect(rendered).to match(/Publication Month/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Publication Url/)
    expect(rendered).to match(/Publicaiton Article Title/)
    expect(rendered).to match(/Publication Article Scripture/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Publication Chapter Title/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/Publication Paragraph Question/)
    expect(rendered).to match(/Publication Paragraph Text/)
    expect(rendered).to match(/Publication Paragraph Scriptures/)
    expect(rendered).to match(/Publication Meeting Part/)
    expect(rendered).to match(/Image Caption/)
    expect(rendered).to match(/Image Subject Keywords/)
    expect(rendered).to match(/Image Bible Characters/)
  end
end
