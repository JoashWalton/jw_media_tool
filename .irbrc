# frozen_string_literal: true

# Purpose of file(https://nts.strzibny.name/improving-irb-with-custom-irbrc/):
# The .irbrc file is a Ruby file that gets evaluated whenever we start the console with 'irb' or 'rails c'.
# We can place it in a home directory (~/.irbrc) or in the project directory (to scope it per project).
# Important!! - 'But only one of these files will take effect, and the global one has precedence.'

require 'irb/ext/eval_history'
IRB.conf[:SAVE_HISTORY] = 10_000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"

require 'awesome_print'
AwesomePrint.irb!

# require 'byebug'
require 'csv'
require 'debug'
require 'faker'
require 'faraday'
require 'irb'
require 'irb/completion'
require 'open-uri'
require 'ostruct'
require 'rubygems'
# require 'savon'
require 'securerandom'
# require 'sidekiq/api'
require 'yaml'

ap 'These are not the droids your looking for...', color: { string: :yellow }

alias q exit

def jwtest
  puts 'MBP 16'
  ap 'MBP 16 Red', color: { string: :red }
end

# clear cache in rails console only, not irb
def reset
  reload!
end

# reset the irb console
def rrb
  load '~/.irbrc'
end

# clean cache in irb
def clean
  exec($PROGRAM_NAME) # exec($0)
end

# show SQL in rails console (3-5)
def rcsql
  ActiveRecord::Base.logger = Logger.new($stdout)
end

# show SQL in rails console (6+)
def rcsql6
  ActiveRecord::Base.verbose_query_logs = true
end

# show SQL in rails console (7)
def rcsql7
  ActiveRecord.verbose_query_logs = true
  ActiveRecord::Base.logger = Logger.new($stdout)
end

## Hash foolery
def tst_hsh
  {
    a: 1,
    b: 2,
    c: 3
  }
end

def tst_nest_hsh
  {
    a: { b: { c: 1, d: 2 } },
    e: { f: { g: 3, h: 4 } },
    i: { j: { k: 5, l: 6 } }
  }
end

def str_hsh
  {
    'abc' => 'def',
    'ghi' => 'jkl',
    'mno' => 'pqr'
  }
end

def str_nest_hsh
  {
    'abc': { 'def': { 'ghi' => 'jkl', 'mno' => 'pqr' } },
    'stu': { 'vwx': { 'yz' => 'cba', 'fed' => 'ihg' } },
    'lkj': { 'onm': { 'rqp' => 'uts', 'xwv' => 'zy' } }
  }
end

def test_video_agg(video_file_path)
  if video_file = FFMPEG::Movie.new(video_file_path)
    video_file
  else
    puts 'Failed to process video file'
  end
end

def parse
  EpubParsing::MeetingWorkbookParser.new("tmp/storage/epubs/meeting_workbooks/2026/mwb_E_202605.epub")
end
