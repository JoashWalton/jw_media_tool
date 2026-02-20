require "zip"
module EpubParsing
  class MeetingWorkbookParser
    STORAGE_DIRECTORY = Rails.root.join("storage/epubs/meeting_workbooks/")
    WORKBOOK_GENERIC_TITLE = "Life and Ministry Meeting Workbook, "

    def initialize(file_path)
      @file_path = file_path
      @epub = EPUB::Parser.parse(Rails.root.join(file_path).to_s)
      @workbook_mapping = {}
      @workbook_mapping[:title] = @epub.metadata.title
      build_output_directory
      parse_workbook
    end

    def build_output_directory
      match_data = /#{WORKBOOK_GENERIC_TITLE}(.*)\s(\d+)/.match(@epub.metadata.title)
      @months = match_data[1]
      @year = match_data[2]
      @workbook_output_dir = STORAGE_DIRECTORY.join(@year, "#{@months}")
      @image_output_dir = @workbook_output_dir.to_s + "/images"
      @article_output_dir = @workbook_output_dir.to_s + "/article_text"
      FileUtils.mkdir_p(@workbook_output_dir) unless File.directory?(@workbook_output_dir)
      FileUtils.mkdir_p(@image_output_dir) unless File.directory?(@image_output_dir)
      FileUtils.mkdir_p(@article_output_dir) unless File.directory?(@article_output_dir)
    end

    def parse_workbook
      @workbook_mapping[:title] = @epub.metadata.title
      collect_images
      collect_articles
    end

    def collect_images
      @image_filenames = []
      @epub.each_content do |item|
        binding.break
        if item.media_type.start_with?("image/")
          @image_filenames << item.full_path.to_s
          output_path = @image_output_dir.to_s + "/" + item.full_path.to_s.gsub("/", "_")
          File.open(output_path, "wb") { |file| file.write(item.read) }
          puts "Extracted image: #{output_path}"
        end
      end
    end

    def collect_articles
      @epub.each_page_on_spine do |page|
        binding.break
        page_text = Nokogiri::HTML(page.read).text.strip
        retrieve_cover_caption(page_text) if cover_page?(page_text)
        generate_workbook_mapping(page_text) if table_of_contents_page?(page_text)
      end
    end

    def cover_page?(text)
      text.include?("Cover")
    end

    def table_of_contents_page?(text)
      text.include?("Life and Ministry Meeting Workbook, #{@months} #{@year}") &&
      text.include?("Our Christian Life and Ministry—Meeting Workbook, #{@months} #{@year}")
    end

    def retrieve_cover_caption(text)
      caption = cover_image_caption(text)
      workbook_mapping[:cover] = caption if caption
    end

    def generate_workbook_mapping(text)
    end

    def cover_image_caption(text)
      return false unless text.include?("Cover picture:")

      /Cover picture:\s*(.*)/.match(text)[1]
    end

    # Define a method to extract text
    def extract_text_from_epub(file_path)
      book = EPUB::Parser.parse(file_path)
      full_text = []

      # Iterate through pages in the correct reading order (spine)
      book.each_page_on_spine do |page|
        # page.read provides the raw XHTML content
        xhtml_content = page.read

        # Use Nokogiri to parse the XHTML and get the plain text
        doc = Nokogiri::HTML(xhtml_content)
        # The .text method extracts all text content, removing HTML tags
        page_text = doc.text.strip

        # Add the page text to the full text, perhaps with a separator
        full_text << page_text unless page_text.empty?
      end

      # Join all pages with a newline separator
      full_text.join("\n\n")
    end
  end
end
