class MorningWorshipVideoDataAggregationJob < ApplicationJob
  queue_as :default

  def perform(video)
    # Do something later
  end
end

# metadata[:format][:tags][:title]
