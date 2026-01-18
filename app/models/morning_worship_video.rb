class MorningWorshipVideo < ApplicationRecord
  belongs_to :video

  MW_TITLE_REGEX = /(\w*)\s(\w*):\s(.*)[(](.*)[)]/
end
